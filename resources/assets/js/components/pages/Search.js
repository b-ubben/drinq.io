import React, { Component } from 'react';
import { Redirect } from 'react-router-dom';

// import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';

export default class Search extends Component {
  state = {
    isLoggedIn: false,
    loadResults: false,
    locationInput: '',
    inputFeedback: ''
  }

  componentDidMount() {
    if (sessionStorage.getItem('token')) {
      this.setState({isLoggedIn: true});
    }

    if (this.state.inputFeedback) setTimeout(this.clearMessage, 8000);
  }

  clearMessage = () => {
    this.setState({ inputFeedback: '' });
  }

  checkIfLoggedIn = () => {
    if (!sessionStorage.getItem('token')) {
      this.setState({isLoggedIn: false});
    }
  }

  loadResults = (e) => {
    e.preventDefault();

    if (this.state.locationInput.length == 5 && !isNaN(parseInt(this.state.locationInput))) {
      sessionStorage.setItem('zipcode', this.state.locationInput);
      this.setState({ loadResults: true });
    } else {
      e.preventDefault();

      this.setState({ inputFeedback: 'Please enter a valid 5-digit zipcode!' });
    }
  }

  handleInput = (e) => {
      this.setState({ locationInput: e.target.value });
  }

  render() {
    const isLoggedIn = this.state.isLoggedIn;
    const loadResults = this.state.loadResults;
    const inputFeedback = this.state.inputFeedback;
    //const zipcode = sessionStorage.getItem('zipcode');

    if (loadResults) {
      return(
        <Redirect to="/results" />
      );
    } else {
      return(
        <div>
          <Navigation />
          <section>
          	<div className="row">
          		<div className="item margin-x-nothing">
              {isLoggedIn ? <p className="display-medium padding-top-nothing text-center">{"Welcome, " + sessionStorage.getItem("username")}</p> : ''}
          		</div>
          	</div>

          	<div className="row container-mobile">
          		<div className="item pane pane-rounded bg-light text-main">
          			<p className="pane-content text-center margin-bottom-nothing">Please enter your zipcode. We'll search for places nearby where you can get a drink!</p>

                <form className="crutch-form container-mobile padding-something margin-y-something">
                  { inputFeedback ? <p className="alert-failure margin-x-nothing">{ this.state.inputFeedback }</p> : '' }
                  <input type="text" className="input-long border rounded-border" onChange={ this.handleInput }/>
                  <button className="padding-something border border-color-grey rounded-border button-long bg-dank text-white" onClick={ this.loadResults }>Go</button>
                </form>
          		</div>
          	</div>
          </section>
          <Footer view="search"/>
        </div>
      );
    }
  }
}
