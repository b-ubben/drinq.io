import React, { Component } from 'react';
import { Link, Redirect } from 'react-router-dom';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';
import HappyHourCard from './../partials/HappyHourCard';
import Loading from './../partials/Loading';
import { BASE_URL } from './../partials/Path';

//import fontawesome
// import FontAwesomeIcon from '@fortawesome/react-fontawesome';
// import faArrowLeft from '@fortawesome/fontawesome-free-solid/faArrowLeft';

export default class HappyHoursResults extends Component {
  state = {
    zipcode: sessionStorage.getItem('zipcode'),
    happyhours: '',
    errorFeedback: '',
    error: false,
    load: false,
    noZip: true
  }

  componentDidMount() {
    if (this.state.zipcode !== null && isNaN(this.state.zipcode) === false) {
      this.loadResults();
    } else {
      this.setState({
        load: true,
        error: true,
        noZip: true,
        errorFeedback: 'Invalid Zipcode!'
      });
    }
  }

  loadResults() {
    axios.get(BASE_URL + '/happyhours/' + this.state.zipcode, {
      headers: {
        'Content-Type': 'application/json',
      }
    }).then( response => {
        if (response.status === 200) {
          if (response.data.status === 200) {
            this.setState({
              happyhours: response.data.results,
              load: true,
              noZip: false
             });
          } else {
            this.setState({
              error: true,
              load: true,
              noZip: false,
              errorFeedback: response.data.message
            });
            sessionStorage.setItem('zipcode', '');
          }
        } else {
          this.setState({
            error: true,
            load: true,
            noZip: false,
            errorFeedback: 'There was problem. Sorry!'
          });
          sessionStorage.setItem('zipcode', '');
        }
    }).catch( error => {
      this.setState({
        errorFeedback: 'Failed to load happy hour info!',
        load: true,
        error: true,
        noZip: false
       });
      sessionStorage.setItem('zipcode', '');
    });
  }

  render() {
    const happyhours = this.state.happyhours;
    const error = this.state.error;
    const errorFeedback = this.state.errorFeedback;
    const noZip = this.state.noZip;
    const load = this.state.load;

    if (load) {
      if (noZip || error) {
        sessionStorage.setItem('errorMessage', errorFeedback);
        return(
          <div>
            <Navigation />
            <Redirect to="error" />
            <Footer view="results" />
          </div>
        );
      } else {
        return(
          <div>
            <Navigation />
            <section className="container text-main">
              <div className="padding-bottom-nothing padding-top-something text-center">
                <Link to="search">
                  back to search
                </Link>
              </div>
              <div className="happy-hour-cards-container">
                {
                  Object.values(happyhours).map( (happyhour, i) => <HappyHourCard data={ happyhour } key={ i } />)
                }
              </div>
            </section>
            <Footer view="results"/>
          </div>
        );
      }
    } else {
      return(
        <div>
          <Navigation />
          <Loading message="Loading Results.." redirect={ false } wait={ false } />
          <Footer view="results" />
        </div>
      );
    }
  }
}
