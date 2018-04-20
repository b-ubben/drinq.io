import React, { Component } from 'react';
import { Redirect, Link } from 'react-router-dom';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';
import Loading from './../partials/Loading';

export default class LoggedOut extends Component {
  state = {
    loading: true
  }

  componentDidMount() {
    setTimeout( () => {
      this.setState({ loading: false });
    }, 2000);
  }

  render() {
    const loading = this.state.loading;

    return(
      <main className="row margin-top-most">
        { loading ? '' : <Loading message="Taking you back to the home screen" /> }
        <div className="item pane justify-content-center align-items-center">
          <p className=" display-medium pane-body item text-center">You have been logged out. Please click <Link to="/">here</Link> to return to the home screen, or wait a moment and you will be redirected.</p>
        </div>
      </main>
    );
  }
}
