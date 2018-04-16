import React, { Component } from 'react';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';

export default class Landing extends Component {
  state = {
    isLoggedIn: false,
    messages: ''
  }

  componentDidMount() {
    if (sessionStorage.getItem('isLoggedIn') === 'true') {
      this.setState({isLoggedIn: true});
    }
  }

  render() {
    return(
      <div>
        <Navigation isLoggedIn={ this.state.isLoggedIn } />

        <p className="text-center">{this.state.messages}</p>

        <section>
        	<div className="row">
        		<div className="item">
        			<p className="display-big text-center">Looking for the Nearest Happy Hour?</p>
        		</div>
        	</div>

        	<div className="row container-tablet">
        		<div className="item pane">
        			<p className="pane-content text-center margin-bottom-nothing">Please enter your zipcode. We'll search for places nearby where you can get a drink!</p>

              <form className="crutch-form container-mobile padding-something margin-y-something">
                <input type="text" className="input-long border rounded-border" />
                <button className="padding-something border border-color-grey rounded-border button-long bg-dank text-white">Go</button>
              </form>
        		</div>
        	</div>

        </section>
        <Footer />
      </div>
    );
  }
}
