var React = require('react');
var ReactDOM = require('react-dom');
var ContentBox = require('./components/ContentBox.jsx');

window.onload = function () {
  ReactDOM.render(
   <ContentBox />,
    document.getElementById('app')
  );
}
