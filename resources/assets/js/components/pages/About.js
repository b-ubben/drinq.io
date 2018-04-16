import React, { Component } from 'react';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';

export default class About extends Component {
  render() {
    return(
      <div>
        <Navigation isLoggedIn={ this.state.isLoggedIn }/>

        <main>
        	<div className="row">
        		<header className="item margin-bottom-nothing">
        			<p className="display-medium text-center">About Us</p>
        		</header>

        		<section className="item pane container-tablet">
        		  <div className="pane-content">
                <p>Drinq is currently being developed and maintained by a senior design project group in California State University, Northridge's Computer Information Techonology program known as the Morning Drinkers.</p>
        		  </div>
        	 </section>
          </div>
        </main>

        <Footer />
      </div>
    );
  }
}
