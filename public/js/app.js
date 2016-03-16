let h = require('virtual-dom/h');
let _ = require("lodash");

let Day = ({name, day, data, read_only}) => {
  let entries = data.val() || {};
  if (!entries[name]) {
    entries[name] = "";
  }
  let rows = _.map(_.keys(entries).sort(), (person) => {
    let item = entries[person];
    if (name == person && !read_only && (new Date().getHours() < 24)) {
      let onChange = (event) => {
        let ref = data.child(person).ref();
        let value = event.target.value;
        if (value.trim().length) {
          ref.set(value.substring(0,40));
        } else {
          ref.remove();
        }
      };
      item = h("input", {
        type: "text",
        value: item,
        onchange: onChange,
        onkeyup: onChange,
        style: {width: "100%"},
      });
    }
    return h("tr", {key: person}, [
        h("td", person),
        h("td", item),
    ]);
  });
  return h("div", [
      h("table", {className: "table"}, [
        h("thead", [
          h("tr", [h("th", "Person"), h("th", "Food")])
        ]),
        h("tbody", rows),
      ])
  ]);
};

let Menu = ({link}) => {
  const style = {
    width: "100%",
    height: "60%",
    marginTop: "10px",
    marginBottom: "10px",
    border: "1px solid #ccc"
  };
  return h('iframe', {
    style: style,
    src: link
  }, []);
};

let App = ({name, snap, time}) => {
  let today = time.toISOString().substring(0,10);
  let msg = snap.child("disable").val();
  if (msg) {
    return h("h1", msg);
  }
  return h("div", [
    h("h1", "Hello " + name + "! What will you eat today?"),
    Day({
      name: name,
      day: today,
      data: snap.child("days").child(today)
    }),
    Menu({link: snap.child("latest_menu").val()}),
    h("button", {className: "btn pull-right", onclick: () => snap.ref().unauth()}, "Logout"),
  ])
};

module.exports = App;

