import React, { Component } from 'react';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';
import Loading from './../partials/Loading';
import { BASE_URL } from './../partials/Path';

export default class Profile extends Component {
  state = {
    redirect: false,
    userData: ''
  }

  componentDidMount = () => {
      const loggedIn = this.checkIfLoggedIn();

      if (loggedIn) {
        axios.get(BASE_URL + '/profile', {
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer ' + sessionStorage.getItem('token')
          }
        }).then( response => {
            if (response.status === 200 && response.data.status === 200) {
              this.setState({ userData: response.data.reason });
            } else {
              this.setState({ redirect: true });
            }
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
    const userData = this.state.userData;

    if (redirect) {
      return(
        <div>
          <Navigation />
          <Loading message="Must be logged in!" view="search" />
          <Footer view="profile" />
        </div>
      );
    } else {
      return(
        <div>
          <Navigation />
          <section className="row padding-something padding-top-most">
            <div className="item container-mobile text-main pane pane-rounded bg-light">
              <p className="text-center">Username:<br /><span className="display-medium">{ userData.username }</span></p>
              <p className="small text-center">{ userData.email }</p>
            </div>
          </section>
          <Footer view="profile" />
        </div>
      );
    }
  }
}
