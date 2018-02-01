import React, { Component } from 'react';
import {
  BrowserRouter as Router,
  Route,
  Link
} from 'react-router-dom';

import Navigation from './partials/Navigation';
import Footer from './partials/Footer';
import Landing from './pages/Landing';
import About from './pages/About';

export default class Main extends Component {
  constructor(props) {
    super(props);

    this.state = {isLoggedIn: false};
  }

  render() {
    return(
      <Router>
        <div className="Main">
          <Navigation isLoggedIn={this.state.isLoggedIn}/>
          <Route exact path="/" component={ Landing } />
          <Route exact path="/about" component={ About } />
          <Footer />
        </div>
      </Router>
    );
  }
}
