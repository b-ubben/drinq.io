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
    errorFeedback: '',
    redirect: false
  }

  componentDidMount() {
      if (this.state.zipcode !== null) {
        this.loadResults();
      } else {
        this.setState({ redirect: true });
      }
  }

  loadResults() {
    if (isNaN(this.state.zipcode) === false) {
      axios.get(BASE_URL + '/happyhours/' + this.state.zipcode, {
        headers: {
          'Content-Type': 'application/json',
        }
      }).then( response => {
        if (response.status === 200) {
          this.setState({ happyhours: response.data.results });
        } else {
          this.setState({
            redirect: true,
            errorFeedback: 'Unable to load results! Sorry!'
          });
        }
      }).catch( error => {
        this.setState({
          redirect: true,
          errorFeedback: 'Failed to load happy hour info!'
         });
      });
    } else {
      this.setState({
        redirect: true,
        errorFeedback: 'Must enter zipcode first!'
      });
    }
  }

  resultsError = () => {
    this.setState({
      redirect: true,
      errorFeedback: ''
    });
  }

  render() {
    const redirect = this.state.redirect;
    const happyhours = this.state.happyhours;

    if (redirect) {
      return(
        <div>
          <Navigation />
          <Loading message="Must enter zipcode first!" />
        </div>
      );
    } else if (!happyhours && !redirect) {
      return(
        <div>
          <Navigation />
          <Loading message="Loading results..." redirect={ false } />
        </div>
      );
    } else {
      return(
        <div>
          <Navigation />

          <section className="container-desktop padding-top-enough">
            <div className="float-left padding-bottom-nothing back-arrow">
              <Link to="/" className="text-decoration-none h3" >
                <FontAwesomeIcon icon={ faArrowLeft } />
              </Link>
            </div>
            <div className="happy-hour-cards-container row align-items-center justify-content-start flex-nowrap flex-direction-row">
              {
                Object.values(happyhours).map( (happyhour, i) => <HappyHourCard data={ happyhour } key={ i } />)
              }
            </div>
          </section>
          <Footer view="results"/>
        </div>
      );
    }
  }
}
