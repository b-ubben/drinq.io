import React, { Component } from 'react';
import { Link, Redirect } from 'react-router-dom';

// import base url for api for logging out
import { BASE_URL } from './../partials/Path';

// import loading partial
import Loading from './../partials/Loading';

export default class Navigation extends Component {
  state = {
    isExpanded: false,
    isLoggedIn: false,
    hasLoggedOutSuccessfully: false,
    logoutMessage: ''
  }

  componentDidMount() {
    this.checkIfLoggedIn();
  }

  checkIfLoggedIn() {
    if (sessionStorage.getItem('token')) {
      this.setState({isLoggedIn: true});
    }
  }

  handleToggle = (e) => {
    this.state.isExpanded ? this.setState({isExpanded: false}) : this.setState({isExpanded: true});
  }

  // log the user out
  handleLogOut = (e) => {
    e.preventDefault();

   // build out parameters that will be sent
   var config = {
      headers: {
        'Content-Type': 'application/json',
        'Authorization': "Bearer " + sessionStorage.getItem('token'),
      }
   };

    // delete the token from the database
    axios.post(BASE_URL + '/auth/logout', "", config).then((response) => {
      this.setState({
        isLoggedIn: false,
        hasLoggedOutSuccessfully: true
      }, function() {
        // clear username, token, etc. from session
        sessionStorage.clear();
      });
    }).catch();
  }

  onLogoutClick = (e) => {
    e.preventDefault();

    this.handleToggle(e);
    this.handleLogOut(e);
  }

  render() {
    const isLoggedIn = this.state.isLoggedIn;
    const hasLoggedOutSuccessfully = this.state.hasLoggedOutSuccessfully;

    if (hasLoggedOutSuccessfully) {
      return(
        <div>
          <nav className="navigation">
            <span className="navigation-logo">drinq</span>
            <button className="navigation-link bg-dark border-none" onClick={ this.handleToggle }>
              <div className="menu-logo">
                <div className="menu-logo-bars"></div>
                <div className="menu-logo-bars"></div>
                <div className="menu-logo-bars"></div>
              </div>
            </button>
          </nav>
          <Loading view="loggedout" waitTime={ 400 }/>
        </div>
      );
    } else {
      return(
        <div className="bg-dark navigation-container">
          <nav className="navigation">
            <span className="navigation-logo">drinq</span>
            <button className="navigation-link bg-dark border-none" onClick={ this.handleToggle }>
              <div className="menu-logo">
                <div className="menu-logo-bars"></div>
                <div className="menu-logo-bars"></div>
                <div className="menu-logo-bars"></div>
              </div>
            </button>
          </nav>

          <nav className={this.state.isExpanded ? 'nav-expanded bg-lighterDark display-block container-mobile float-right border rounded-border border-color-grey' : 'display-none'}>
            <div className="row text-center">
              <div className="item-half item-half__mobile margin-y-nothing padding-y-something">
                <Link className="navigation-link bg-dark border-color-grey rounded-border" to="/" onClick={ this.handleToggle }>Home</Link>
              </div>

              <div className="item-half item-half__mobile margin-y-nothing padding-y-something">
                {isLoggedIn ? (
                  <Link className="navigation-link bg-dark border-color-grey rounded-border" to="/logout" onClick={ this.onLogoutClick }>Log Out</Link>) : (<Link className="navigation-link bg-dark border-color-grey rounded-border" to="/login" onClick={ this.handleToggle }>Log In</Link>)
                }
              </div>

              <div className="item-half item-half__mobile margin-y-nothing padding-y-something">
                {isLoggedIn ? (
                  <Link className="navigation-link bg-dark border-color-grey rounded-border" to="/profile" onClick={ this.handleToggle }>Profile</Link>) : (<Link className="navigation-link bg-dark border-color-grey rounded-border" to="/register" onClick={ this.handleToggle }>Register</Link>)
                }
              </div>
              <div className="item-half item-half__mobile margin-y-nothing padding-y-something">
                <Link className="navigation-link bg-dark border-color-grey rounded-border" to="/about" onClick={ this.handleToggle }>About Us</Link>
              </div>

              <div className="item-half item-half__mobile margin-y-nothing padding-y-something">
                <Link className="navigation-link bg-dark border-color-grey rounded-border" to="/search" onClick={ this.handleToggle }>Search</Link>
              </div>
            </div>
          </nav>
        </div>
      );
    }
  }
}
