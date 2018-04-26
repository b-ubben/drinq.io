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
    zipcode: sessionStorage.getItem('zipcode'),
    happyhours: '',
    redirect: false
  }

  componentDidMount() {
      this.loadResults();
  }

  loadResults() {
    //sessionStorage.setItem('zipcode', '');

    if (isNaN(this.state.zipcode) === false && this.state.zipcode != '') {
      axios.get(BASE_URL + '/happyhours/' + this.state.zipcode, {
        headers: {
          'Content-Type': 'application/json',
        }
      }).then( response => {
        this.setState({ happyhours: response.data.results });
      }).catch( error => {
        this.setState({ redirect: true });
      });
    } else {
      this.setState({ redirect: true });
    }
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
            {
              Object.values(this.state.happyhours).map( (happyhour, i) => <HappyHourCard data={ happyhour } key={ i } />)
            }
          </div>
        </main>
        <Footer />
      </div>
    );
  }
}
