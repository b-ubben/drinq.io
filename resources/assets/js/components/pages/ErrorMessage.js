import React, { Component } from 'react';
import { string } from 'prop-types';

// import partials
import Navigation from './../partials/Navigation';
import Loading from './../partials/Loading';
import Footer from './../partials/Footer';

export default class ErrorMessage extends Component {
  state = {
      errorMessage: this.props.errorMessage
  }

  static propTypes = {
    errorMessage: string
  }

  static defaultProps = {
    errorMessage: 'There was a problem processing your request'
  }

  componentDidMount() {
    this.checkForErrorMessage();
  }

  checkForErrorMessage() {
    let errorMessage = sessionStorage.getItem('errorMessage');

    if (errorMessage) {
      this.setState({ errorMessage: errorMessage });

      //clear errorMessage from session
      sessionStorage.setItem('errorMessage', '');
    } else {
      return false;
    }
  }

  render() {
    return(
      <div>
        <Navigation />
        <Loading message={ this.state.errorMessage } view="search"/>
        <Footer />
      </div>
    );
  }
}
