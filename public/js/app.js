let h = require('virtual-dom/h');
let _ = require("lodash");
const moment = require("moment/moment");

let Day = ({name, isAfter, data, read_only}) => {
  let entries = data.val() || {};
  if (!entries[name]) {
    entries[name] = "";
  }
  let rows = _.map(_.keys(entries).sort(), (person) => {
    let item = entries[person];
    let meToo = "";
    if (name == person && !read_only && isAfter) {
      let onChange = (event) => {
        let ref = data.child(person).ref();
        let value = event.target.value;
        if (value.trim().length) {
          ref.set(value.substring(0,50));
        } else {
          ref.remove();
        }
      };
      item = h("input", {
        type: "text",
        value: item,
        oninput: onChange,
        style: {width: "100%"},
      });
    } else if (!read_only && isAfter) {
      meToo = h("a", {
        href: "javascript://",
        title: "Sounds good, I'll have what he's having.",
        onclick: () => {
          let ref = data.child(name).ref();
          ref.set(entries[person]);
        }
      }, [h("i", {
        className: "fa fa-hand-o-left"
      })]);
    }
    return h("tr", {key: person}, [
        h("td", person),
        h("td", item),
        h("td", meToo)
    ]);
  });
  return h("div", [
      h("table", {className: "table"}, [
        h("thead", [
          h("tr", [h("th", "Person"), h("th", "Food"), h("th", "")])
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
  let today = time.today.toISOString().substring(0,10);
  let msg = snap.child("disable").val();

  if (msg) {
    return h("h1", msg);
  }
  return h("div", [
    h("h1", "Hello " + name + "! What will you eat today?"),
    h("p", [(time.isAfter ? "Orders close " : "Orders closed "), h("strong", time.fromNow), "."]),
    Day({
      name: name,
      isAfter: time.isAfter,
      data: snap.child("days").child(today)
    }),
    Menu({link: snap.child("latest_menu").val()}),
    h("button", {className: "btn pull-right", onclick: () => snap.ref().unauth()}, "Logout"),
  ])
};

module.exports = App;
