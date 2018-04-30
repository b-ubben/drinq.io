import React, { Component } from 'react';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';

export default class About extends Component {
  render() {
    return(
      <div>
        <Navigation />

        <main>
        	<div className="row">
        		<header className="item margin-bottom-nothing">
        			<p className="display-medium text-center">About Us</p>
        		</header>

        		<section className="item container-tablet text-dark">
        		  <div className="pane pane-rounded bg-light padding-enough">
                <div className="pane-body">
                  <p>Drinq is currently being developed and maintained by a senior design project group in California State University, Northridge's Computer Information Techonology program known as the Morning Drinkers.</p>
                </div>
        		  </div>
        	 </section>
          </div>
        </main>

        <Footer view="about" />
      </div>
    );
  }
}
