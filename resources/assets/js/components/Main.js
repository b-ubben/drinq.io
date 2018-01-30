import React, { Component } from 'react';
import {
  Router,
  Route,
  browserHistory,
  Link } from 'react-router';

import Header from './partials/Header';
import Footer from './partials/Footer';
import Landing from './pages/Landing';

export default class Main extends Component {
  render() {
    return(
      <div className="Main">
        <Header />
        <Landing />
        <Footer />
      </div>
    );
  }
}
