import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import { string } from 'prop-types';

//import font-awesome icons
import FontAwesomeIcon from '@fortawesome/react-fontawesome';
import faHome from '@fortawesome/fontawesome-free-solid/faHome';
import faSearch from '@fortawesome/fontawesome-free-solid/faSearch';
import faUser from '@fortawesome/fontawesome-free-solid/faUser';
import faQuestion from '@fortawesome/fontawesome-free-solid/faQuestion';

export default class Footer extends Component {
  state = {
    loggedIn: this.checkIfLoggedIn()
  }

  static propTypes = {
      view: string
  }

  checkIfLoggedIn() {
    if (sessionStorage.getItem('token')) {
      return true;
    } else {
      return false;
    }
  }

  render() {
    const view = this.props.view;
    const loggedIn = this.state.loggedIn;

    return(
      <footer className="row">
				<div className="item text-center desktop-only small">
					<p>Developed and tested by the Morning Drinkers</p>
          <p>Copyright &copy; 2018</p>
				</div>

        <div className="display-mobile-only item">
          <nav className="bottom-nav navigation bg-dark">
            <Link to="/" className={view == 'landing' ? "bottom-nav-link bg-lighterDark" : "bottom-nav-link"}>
              <FontAwesomeIcon icon={ faHome } size="lg" />
            </Link>

            <Link to="search" className={(view == 'search' || view == 'results') ? "bottom-nav-link bg-lighterDark" : "bottom-nav-link"}>
              <FontAwesomeIcon icon={ faSearch } size="lg" />
            </Link>

            <Link to={loggedIn ? "profile" : "login"} className={(view == 'login' || view == 'profile') ? "bottom-nav-link bg-lighterDark" : "bottom-nav-link"}>
              <FontAwesomeIcon icon={ faUser } size="lg" />
            </Link>

            <Link to="about" className={view == 'about' ? "bottom-nav-link bg-lighterDark" : "bottom-nav-link"}>
              <FontAwesomeIcon icon={ faQuestion } size="lg" />
            </Link>
          </nav>
        </div>
			</footer>
    );
  }
}
