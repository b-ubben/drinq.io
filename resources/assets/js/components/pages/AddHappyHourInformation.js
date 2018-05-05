import React, { Component } from 'react';

//import partials
import Navigation from './../partials/Navigation';
import Loading from './../partials/Loading';
import Footer from './../partials/Footer';

export default class AddHappyHourInformation extends Component {
  state = {
    location_id: sessionStorage.getItem('locationIdToAdd'),
    added: false
  }

  componentDidMount() {
    setTimeout( () => {
      this.setState({ added: true });
    }, 2000);
  }

  render() {
    const added = this.state.added;

    if (added) {
      return(
        <div>
          <Navigation />
          <Loading message="taking you back to results page" view="results" />
          <Footer view="results" />
        </div>
      );
    } else {
      return(
        <div>
          <Navigation />
          <section className="row padding-top-enough text-dark">
            <div className="item container-mobile padding-something">
              <p className="text-center">Location id to add information to: { this.state.location_id }</p>
              <p className="text-center small">This feature is coming soon. But for now, enjoy our location search!</p>
            </div>
          </section>
          <Footer view="results" />
        </div>
      );
    }
  }
}
