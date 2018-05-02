import React, { Component } from 'react';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';
import Loading from './../partials/Loading';
import { BASE_URL } from './../partials/Path';

export default class Profile extends Component {
  state = {
    redirect: false
  }

  componentDidMount = () => {
      const loggedIn = this.checkIfLoggedIn();

      if (loggedIn) {
        axios.get(BASE_URL + '/profile').then( response => {
            console.log(response);
          }
        ).catch( error => {
            console.log(error);
          }
        );
      } else {
        this.setState({ redirect: true });
      }
  }

  checkIfLoggedIn = () => {
    if (sessionStorage.getItem('token')) {
      return true;
    } else {
      return false;
    }
  }

  render() {
    const redirect = this.state.redirect;

    if (redirect) {
      return(
        <div>
          <Navigation />
          <Loading message="Must be logged in!" />
          <Footer view="profile" />
        </div>
      );
    } else {
      return(
        <div>
          <Navigation />
          <section className="row">
            <div className="item">
              <p className="display-medium text-center">Test</p>
            </div>
          </section>
          <Footer view="profile" />
        </div>
      );
    }
  }
}
