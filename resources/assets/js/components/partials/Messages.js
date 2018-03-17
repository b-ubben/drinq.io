import React, { Component } from 'react';

export default class Messages extends Component {
  state = {
    message: ''
  }

  //Function to clear message after a few seconds goes here
  //Had One but lost it ..have to rewrite

  render() {
    return(
      <div>
        <span>{ this.state.message }</span>
      </div>
    );
  }
}
