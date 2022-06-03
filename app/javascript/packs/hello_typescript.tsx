// Run this example by adding <%= javascript_pack_tag 'hello_typescript' %> to the head of your layout file,
// like app/views/layouts/application.html.erb.
import React from 'react';
import ReactDOM from 'react-dom';

export const Test = () => {
  return 'testing typescript';
};

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(<Test />, document.body.appendChild(document.createElement('div')));
});
