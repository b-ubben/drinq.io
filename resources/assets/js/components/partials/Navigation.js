import React, { Component } from 'react';
import { Link, Redirect } from 'react-router-dom';

export default class Navigation extends Component {
  state = {
    isExpanded: false,
    isLoggedIn: false
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

  handleLogOut = (e) => {
    e.preventDefault();
    this.setState({isLoggedIn: false});
    sessionStorage.clear();
  }

  onLogoutClick = (e) => {
    e.preventDefault();

    this.handleToggle(e);
    this.handleLogOut(e);
  }

  render() {
    const isLoggedIn = this.state.isLoggedIn;

    return(
      <div className="bg-dark navigation-container">
        <nav className="navigation">
          <Link to="/" className="navigation-logo">drinq</Link>
          <button className="navigation-link bg-dark border-none" onClick={ this.handleToggle }>
            <div className="menu-logo">
              <div className="menu-logo-bars"></div>
              <div className="menu-logo-bars"></div>
              <div className="menu-logo-bars"></div>
            </div>
          </button>
        </nav>

        <nav className={this.state.isExpanded ? 'nav-expanded bg-lighterDark display-block' : 'display-none'}>
          <div className="row text-center flex-nowrap">
            <div className="item-half">
              <Link className="navigation-link border rounded-border button-long margin-bottom-something pane bg-dark border-color-grey" to="/" onClick={ this.handleToggle }>Home</Link>
              {isLoggedIn ? (
                <Link className="navigation-link border rounded-border button-long margin-bottom-something pane bg-dark border-color-grey" to="/logout" onClick={ this.onLogoutClick }>Log Out</Link>) : (<Link className="navigation-link border rounded-border button-long pane bg-dark border-color-grey" to="/login" onClick={ this.handleToggle }>Log In</Link>)
              }
            </div>

            <div className="item-half">
              {isLoggedIn ? (
                <Link className="navigation-link border rounded-border button-long margin-bottom-something pane bg-dark border-color-grey" to="/profile" onClick={ this.handleToggle }>Profile</Link>) : (<Link className="navigation-link border rounded-border button-long margin-bottom-something pane bg-dark border-color-grey" to="/register" onClick={ this.handleToggle }>Register</Link>)
              }
              <Link className="navigation-link border rounded-border button-long pane bg-dark border-color-grey" to="/about" onClick={ this.handleToggle }>About Us</Link>
            </div>
          </div>
        </nav>
      </div>
    );
  }
}
