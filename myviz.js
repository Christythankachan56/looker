/**
 * Welcome to the Looker Custom Visualization Builder! Please refer to the following resources
 * to help you write your visualization:
 *  - API Documentation - https://github.com/looker/custom_visualizations_v2/blob/master/docs/api_reference.md
 *  - Example Visualizations - https://github.com/looker/custom_visualizations_v2/tree/master/src/examples
 *  - How to use the CVB - https://developers.looker.com/marketplace/tutorials/about-custom-viz-builder
 **/

const visObject = {
 /**
  * Configuration options for your visualization. In Looker, these show up in the vis editor
  * panel but here, you can just manually set your default values in the code.
  **/
  options: {
    first_option: {
      type: "string",
      label: "My First Option",
      default: "Default Value"
    },
    second_option: {
      type: "number",
      label: "My Second Option",
      default: 42
    }
  },

 /**
  * The create function gets called when the visualization is mounted but before any
  * data is passed to it.
  **/
  create: function(element, config){
    element.innerHTML = "<h1>Ready to render!</h1>";
  },

 /**
  * UpdateAsync is the function that gets called (potentially) multiple times. It receives
  * the data and should update the visualization with the new data.
  **/
  updateAsync: function(data, element, config, queryResponse, details, doneRendering){

    element.innerHTML = "<B> This is fun </B>";

    doneRendering();
  }
};

looker.plugins.visualizations.add(visObject);
