import React, { Component } from 'react';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';
import Loading from './../partials/Loading';


export default class Landing extends Component {
  state = {
    isLoggedIn: false,
    loadResults: false
  }

  componentDidMount() {
    if (sessionStorage.getItem('token')) {
      this.setState({isLoggedIn: true});
    }
  }

  checkIfLoggedIn = () => {
    if (!sessionStorage.getItem('token')) {
      this.setState({isLoggedIn: false});
    }
  }

  loadResults = (e) => {
    e.preventDefault();

    this.setState({ loadResults: true });
  }

  render() {
    const isLoggedIn = this.state.isLoggedIn;
    const loadResults = this.state.loadResults;

    return(
      <div>
        <Navigation isLoggedIn={ this.state.isLoggedIn } />
        { loadResults ? <Loading message="Loading Results" view="results" /> : '' }
        <section>
        	<div className="row">
        		<div className="item">
            {isLoggedIn ? <p className="display-big text-center">{"Welcome, " + sessionStorage.getItem("username")}</p> : ''}
        			<p className="display-big text-center">Looking for the Nearest Happy Hour?</p>
        		</div>
        	</div>

        	<div className="row container-tablet">
        		<div className="item pane">
        			<p className="pane-content text-center margin-bottom-nothing">Please enter your zipcode. We'll search for places nearby where you can get a drink!</p>

              <form className="crutch-form container-mobile padding-something margin-y-something">
                <input type="text" className="input-long border rounded-border" />
                <button className="padding-something border border-color-grey rounded-border button-long bg-dank text-white" onClick={ this.loadResults }>Go</button>
              </form>
        		</div>
        	</div>

        </section>
        <Footer />
      </div>
    );
  }
}
