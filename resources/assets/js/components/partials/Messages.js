import React, { Component } from 'react';

export default class Messages extends Component {
  state = {
    messages: ''
  }

  componentDidMount() {
    this.setState({messages: this.props.messages});
  }

  //Function to clear message after a few seconds goes here
  //Had One but lost it ..have to rewrite

  render() {
    return(
      <div>
        <span>{ this.state.messages }</span>
      </div>
    );
  }
}
