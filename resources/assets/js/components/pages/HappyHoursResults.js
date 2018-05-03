import React, { Component } from 'react';
import { Link } from 'react-router-dom';

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
    error: false,
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
          console.log(response);
        } else {
          this.setState({
            redirect: true,
            errorFeedback: 'Unable to load results! Sorry!'
          });
        }
      }).catch( error => {
        if (error.status === 401) {
          this.setState({
            redirect: true,
            error: true,
            errorFeedback: 'Failed to load happy hour info!'
           });
        }
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
    const error = this.state.error;

    if (redirect) {
      return(
        <div>
          <Navigation />
          <Loading message="Must enter zipcode first!" />
          <Footer view="results" />
        </div>
      );
    } else if (!happyhours && !error) {
        return(
          <div>
            <Navigation />
            <Loading message="Loading results..." redirect={ false } wait={ false }/>
            <Footer view="results" />
          </div>
        );
      } else {
        return(
          <div>
            <Navigation />
            <section className="container-desktop">
              <div className="padding-bottom-nothing text-center">
                <Link to="search">
                  back to search
                </Link>
              </div>
              <div className="happy-hour-cards-container container-desktop">
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
