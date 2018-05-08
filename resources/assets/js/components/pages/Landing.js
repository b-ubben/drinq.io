import React, { Component } from 'react';
import { Redirect } from 'react-router-dom';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';
import Loading from './../partials/Loading';
import { BASE_URL } from './../partials/Path';


export default class Landing extends Component {
  state = {
    isLoggedIn: false
  }

  componentDidMount = () => {
      this.setState({ isLoggedIn: this.checkIfLoggedIn() });
  }

  checkIfLoggedIn = () => {
    if (sessionStorage.getItem('token')) {
      return true;
    } else {
      return false;
    }
  }

  render() {
    const isLoggedIn = this.state.isLoggedIn;

    return(
      <div>
        <Navigation />
        <section>
        	<div className="row padding-something text-main">
        		<div className="item margin-x-nothing">
            {isLoggedIn ? <p className="display-medium text-center text-main padding-y-nohting margin-y-nothing">{"Welcome, " + sessionStorage.getItem("username")}</p> : ''}
        			<p className="display-big text-center">Feeling Thirsty?</p>
        		</div>
            <div className="item pane pane-rounded bg-light text-main padding-something container-mobile">
              <p className="pane-body"><strong>Drinq </strong> is a web application that allows you to search for nearby bars or restaurants within a 10-mile radius to have a drink or enjoy a happy hour! We also allow our users to input happy hour information for other users to take advantage of, too.</p>

              <p>Currently, we only have support for finding locations within the Los Angeles/Southern California area, but more areas are coming soon!</p>
            </div>
        	</div>
        </section>
        <Footer view="landing"/>
      </div>
    );
  }
}
