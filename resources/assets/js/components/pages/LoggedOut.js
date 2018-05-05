import React, { Component } from 'react';
import { Redirect } from 'react-router-dom';

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

    if (!loading) {
      return(
        <div>
          <Navigation />
          <Loading />
          <Footer view="home" />
        </div>
      );
    } else {
      return(
        <div>
          <Navigation />
          <div className="row margin-top-most padding-something">
            <div className="item text-main justify-content-center align-items-center">
              <p className=" display-medium pane-body item text-center">You have been logged out. Please wait a moment and you will be redirected to the home screen.</p>
            </div>
          </div>
          <Footer view="home" />
        </div>
      );
    }
  }
}
