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
          <Link to="/" className="navigation-logo">drinq</Link>
          <a className="navigation-link" onClick={(e) => this.handleToggle(e)}>
            <div className="menu-logo">
              <div className="menu-logo-bars"></div>
              <div className="menu-logo-bars"></div>
              <div className="menu-logo-bars"></div>
            </div>
          </a>
        </nav>

        <nav className={this.state.isExpanded ? 'nav-expanded bg-lighterDark display-block' : 'display-none'}>
          <div className="row text-center flex-nowrap">
            <div className="item-half">
              <Link className="navigation-link border rounded-border button-long margin-bottom-something pane bg-dark border-color-grey" to="/" onClick={(e) => this.handleToggle(e)}>Home</Link>
              {isLoggedIn ? (
                <Link className="navigation-link border rounded-border button-long margin-bottom-something pane bg-dark border-color-grey" to="/logout" onClick={(e) => this.handleToggle(e)}>Log Out</Link>) : (<Link className="navigation-link border rounded-border button-long margin-bottom-something pane bg-dark border-color-grey" to="/login" onClick={(e) => this.handleToggle(e)}>Log In</Link>)
              }
            </div>

            <div className="item-half">
              {isLoggedIn ? (
                <Link className="navigation-link border rounded-border button-long margin-bottom-something pane bg-dark border-color-grey" to="/profile" onClick={(e) => this.handleToggle(e)}>Profile</Link>) : (<Link className="navigation-link border rounded-border button-long margin-bottom-something pane bg-dark border-color-grey" to="/register" onClick={(e) => this.handleToggle(e)}>Register</Link>)
              }
              <Link className="navigation-link border rounded-border button-long margin-bottom-something pane bg-dark border-color-grey" to="/about" onClick={(e) => this.handleToggle(e)}>About Us</Link>
            </div>
          </div>
        </nav>
      </div>
    );
  }
}
