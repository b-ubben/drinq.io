import React, { Component } from 'react';
import {
  BrowserRouter as Router,
  Route,
  BrowserHistory,
  Link
} from 'react-router-dom';

import Navigation from './partials/Navigation';
import Footer from './partials/Footer';
import Messages from './partials/Messages';
import Landing from './pages/Landing';
import About from './pages/About';
import Login from './pages/Login';
import Register from './pages/Register';

export default class Main extends Component {
  state = { isLoggedIn: false }

  render() {
    return(
      <Router>
        <div className="Main">
          <Navigation isLoggedIn={this.state.isLoggedIn}/>
          <Messages />

          <Route exact path="/" component={ Landing } />
          <Route exact path="/about" component={ About } />
          <Route exact path="/login" component={ Login } />
          <Route exact path="/register" component={ Register } />

          <Footer />
        </div>
      </Router>
    );
  }
}
