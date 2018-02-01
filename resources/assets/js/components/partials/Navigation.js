import React, { Component } from 'react';
import { Link } from 'react-router-dom';

export default class Navigation extends Component {
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.state = { isExpanded: false };
    this.handleToggle = this.handleToggle.bind(this);
  }

  handleToggle() {
    if (this.state.isExpanded) {
      this.setState({isExpanded: false});
    }

    else {
      this.setState({isExpanded: true});
    }
  }

  /*handleLogOut() {
    if (this.props.loggedIn) {
      this.props.loggedIn = false;
    }
  }*/

  render() {
    const isLoggedIn = this.props.isLoggedIn;

    return(
      <div className="bg-dark">
        <nav className="navigation">
          <span className="navigation-logo">drinq</span>
          <a className="navigation-link" onClick={(e) => this.handleToggle(e)}>
            <div className="menu-logo">
              <div className="menu-logo-bars"></div>
              <div className="menu-logo-bars"></div>
              <div className="menu-logo-bars"></div>
            </div>
          </a>
        </nav>

        <nav className={this.state.isExpanded ? 'nav-expanded display-block' : 'display-none'}>
          <div className="row text-center flex-nowrap">
            <div className="item-third">
              <Link className="navigation-link" to="/" onClick={(e) => this.handleToggle(e)}>Home</Link>
              {isLoggedIn ? (
                <Link className="navigation-link" to="/logout" onClick={(e) => this.handleToggle(e)}>Log Out</Link>) : (<Link className="navigation-link" to="/login" onClick={(e) => this.handleToggle(e)}>Log In</Link>)
              }
            </div>

            <div className="item-third">
              {isLoggedIn ? (
                <Link className="navigation-link" to="/profile" onClick={(e) => this.handleToggle(e)}>Profile</Link>) : (<Link className="navigation-link" to="/register" onClick={(e) => this.handleToggle(e)}>Register</Link>)
              }
              <Link className="navigation-link padding-bottom-something" to="/about" onClick={(e) => this.handleToggle(e)}>About Us</Link>
            </div>
          </div>
        </nav>
      </div>
    );
  }
}
