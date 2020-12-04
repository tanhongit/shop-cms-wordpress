/* This section of the code registers a new block, sets an icon
and a category, and indicates what type of fields it'll include.
*/
wp.blocks.registerBlockType("brad/border-box", {
  title: "Email Box",
  icon: "smiley",
  category: "common",
  attributes: {
    content: { type: "string" },
  },
  /* This configures how the content and color fields will work,
    and sets up the necessary elements */
  edit: function (props) {
    function updateContent(event) {
      props.setAttributes({ content: event.target.value });
      // biểu thức chính quy
      let reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
      var emailInput = event.target.value;
      var errorEmail = document.getElementById("email");
      if (reg.test(emailInput) != true) {
        errorEmail.style.border = "3px solid red";
      } else {
        errorEmail.style.border = "3px solid black";
      }
    }
    return React.createElement(
      "div",
      null,
      React.createElement("h3", null, "Email Box"),
      React.createElement("input", {
        type: "text",
        value: props.attributes.content,
        id: "email",
        onChange: updateContent,
      })
    );
  },
  save: function (props) {
    return wp.element.createElement(
      "h3",
      { style: { border: "3px solid black" } },
      props.attributes.content
    );
  },
});
