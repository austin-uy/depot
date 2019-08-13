import React from 'react'
import ReactDOM from 'react-dom'
import Store from 'Store'

document.addEventListener('turbolinks:load', function() {
  var element = document.getElementById("store-component");
  ReactDOM.render(<Store/>, element);
});

