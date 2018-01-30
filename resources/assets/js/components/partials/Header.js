import React, { Component } from 'react';
import { Link } from 'react-router-dom';

export default class Header extends Component {
  render() {
    return (
      <header>
        <nav className="navigation bg-dark">
          <a href="/" className="navigation-logo">drinq</a>
          <a className="navigation-link" id="menu">
            <div className="menu-logo">
              <div className="menu-logo-bars"></div>
              <div className="menu-logo-bars"></div>
              <div className="menu-logo-bars"></div>
            </div>
          </a>
        </nav>

        <nav className="nav-expanded bg-dark text-center" id="nav-expanded">
          <a className="navigation-link" href="/">Home</a>
          <a className="navigation-link" href="login.php">Log In</a>
          <a className="navigation-link" href="register.php">Register</a>
          <a className="navigation-link" href="about.php">About Us</a>
        </nav>
      </header>
    );
  }
}
