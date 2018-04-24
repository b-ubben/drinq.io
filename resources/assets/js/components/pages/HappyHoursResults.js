import React, { Component } from 'react';
import { Link } from 'react-router-dom';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';
import HappyHourCard from './../partials/HappyHourCard';
import Loading from './../partials/Loading';
import { BASE_URL } from './../partials/Path';

//import fontawesome
import FontAwesomeIcon from '@fortawesome/react-fontawesome';
import faArrowLeft from '@fortawesome/fontawesome-free-solid/faArrowLeft';

export default class HappyHoursResults extends Component {
  state = {
    zipcode: parseInt(sessionStorage.getItem('zipcode')),
    redirect: false
  }

  componentDidMount() {
      this.loadResults();
      sessionStorage.setItem('zipcode', '');
  }

  loadResults() {
    if (!isNaN(this.state.zipcode)) {
      axios.get(BASE_URL + '/happyhours/' + this.state.zipcode).then( response => {
        this.setState({ happyhours: response.data });
        console.log(this.state.happyhours);
      }).catch( error => {
        this.setState({ redirect: true });
      });
    } else {
      this.setState({ redirect: true });
    }
  }

  renderCards() {
    return(
      <p className="text-center pane pane-rounded bg-light">{ this.state.happyhours }</p>
    );
  }

  render() {
    const redirect = this.state.redirect;

    return(
      <div>
        <Navigation />
        { redirect ? <Loading message="Enter a zipcode first!" /> : '' }
        <main className="container-desktop">
          <div className="float-left">
            <Link to="/" className="text-decoration-none font-weight-bold" >
              <FontAwesomeIcon icon={ faArrowLeft } /> Search
            </Link>
          </div>

          <div className="happy-hour-cards-container row align-items-center justify-content-start flex-nowrap flex-direction-row">
          </div>
        </main>
        <Footer />
      </div>
    );
  }
}
