let Bacon = require("baconjs");
let createElement = require('virtual-dom/create-element');
let diff = require('virtual-dom/diff');
let h = require('virtual-dom/h');
let patch = require('virtual-dom/patch');
const moment = require("moment/moment");

let App = require("./app");
let config = require("./config");

function computeTimeState() {
  if (!config.close) {
    console.warn("Close setting not configured, form will never be disabled. Set close in config.js to address this.");
    return {
      isAfter: true,
      fromNow: "when thy kingdom come",
      today: moment()
    };
  }
  const close = moment(config.close);
  return {
    isAfter: close.isAfter(),
    fromNow: close.fromNow(),
    today: moment()
  }
}

let fire_state = new Bacon.Bus();
let time_state = Bacon.fromPoll(1000, computeTimeState);
let name_state = new Bacon.Bus();

let state = Bacon.combineTemplate({
  time: time_state,
  snap: fire_state,
  name: name_state,
});


var tree = h("div");
var rootNode = createElement(tree);
document.getElementById("app").appendChild(rootNode);


state.onValue((currentState) => requestAnimationFrame(() => {
  var newTree = App(currentState);
  var patches = diff(tree, newTree);
  rootNode = patch(rootNode, patches);
  tree = newTree;
}));



let ref = new Firebase(config.firebase);
ref.on("value", (snap) => fire_state.push(snap))

let onAuthCb = (authData) => {
  if (authData) {
    let name = ref.getAuth().google.displayName;
    name_state.push(name);
  } else {
    ref.authWithOAuthRedirect("google", (error) => {
      if (error) {
        alert("Login Failed!", error);
      } else {
        // We'll never get here, as the page will redirect on success.
      }
    });
  }
};
ref.onAuth(onAuthCb);
