wp.blocks.registerBlockType("brad/border-box", {
  title: "Simple Box",
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
    }
    return React.createElement(
      "div",
      null,
      React.createElement("h3", null, "Simple Box"),
      React.createElement("input", {
        type: "text",
        value: props.attributes.content,
        onChange: updateContent,
      })
    );
  },
  save: function (props) {
    return wp.element.createElement(
      "h3",
      { style: { border: "3px solid " + props.attributes.color } },
      props.attributes.content
    );
  },
});
