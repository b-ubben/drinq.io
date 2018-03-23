import React, { Component } from 'react';
import {
  BrowserRouter as Router,
  Route,
  BrowserHistory,
  Link,
  Switch
} from 'react-router-dom';

//Import partials
import Navigation from './partials/Navigation';
import Footer from './partials/Footer';
import Messages from './partials/Messages';
import { BASE_URL } from './partials/Path';

//Import pages
import Landing from './pages/Landing';
import About from './pages/About';
import Login from './pages/Login';
import Register from './pages/Register';
import NotFound from './pages/NotFound';

export default class Main extends Component {
  state = {
    isLoggedIn: false
   }

   componentDidMount() {
     if (!sessionStorage.getItem('baseUrl')) {
       sessionStorage.setItem('baseUrl', BASE_URL);
     }

     if ( sessionStorage.getItem('isLoggedIn') == 'true') {
       this.setState({isLoggedIn: sessionStorage.getItem('isLoggedIn')});
     }
   }

  render() {
    const isLoggedIn = this.state.isLoggedIn;

    return(
      <Router>
        <div className="Main">
          <Navigation isLoggedIn={ this.state.isLoggedIn }/>
          <p className="text-center text-white">{isLoggedIn ? "You're logged in." : "You're not logged in."}</p>
          <Messages />

          <Switch>
          <Route exact path="/" component={ Landing } />
            <Route path="/about" component={ About } />
            <Route path="/login" component={ Login } />
            <Route path="/register" component={ Register } />

            <Route component={ NotFound } />
          </Switch>
          <Footer />
        </div>
      </Router>
    );
  }
}
