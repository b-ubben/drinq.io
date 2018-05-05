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
        	<div className="row text-main padding-bottom-more">
        		<header className="item margin-bottom-nothing">
        			<p className="display-big text-center">About Us</p>
        		</header>

        		<section className="item padding-top-nothing container-mobile">
        		  <div className="pane pane-rounded bg-light padding-enough">
                <div className="pane-body row">
                  <p>Drinq is currently being developed and maintained by a senior design project group in California State University, Northridge's Computer Information Techonology program formally known as the Morning Drinkers.</p>

                  <dl className="item">
                    <dt><strong>Full-Stack Development:</strong></dt>
                      <dd>Brandon Antillon</dd>
                      <dd>Brandon Ubben</dd>
                    <dt><strong>Data Collection:</strong></dt>
                      <dd>Denis Semendyayev</dd>
                      <dd>Sebastian Duran</dd>
                    <dt><strong>Visual Design/Direction:</strong></dt>
                      <dd>Daniel Jimenez</dd>
                      <dd>Bryan Hiransomboon</dd>
                    <dt><strong>Infrastructure Implementation/Automation:</strong></dt>
                      <dd>Alfredo Garcia</dd>
                  </dl>
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
