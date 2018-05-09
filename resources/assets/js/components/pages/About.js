import React, { Component } from 'react';
import { Link } from 'react-router-dom';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';

export default class About extends Component {
  render() {
    const buttonStyle = {
      display: 'block',
      height: 'auto',
      margin: 'auto',
      maxWidth: '150px',
      width: '100%'
    }

    return(
      <div>
        <Navigation />

        <main>
        	<div className="row text-main padding-bottom-more">
        		<header className="item margin-bottom-nothing">
        			<p className="display-big text-center">About Us</p>
        		</header>

        		<section className="item margin-top-nothing padding-top-nothing container-mobile">
        		  <div className="pane pane-rounded bg-light padding-enough">
                <div className="pane-body row">
                  <p>Drinq was previously developed and maintained by a senior design project team in California State University, Northridge's Computer Information Techonology program known as the Morning Drinkers. Now, primary development continues on as a passion project of the a few members of that team.</p>

                  <p>Like what we've done here? Support us below!</p>

                  <div className="item">
                    <Link to='https://ko-fi.com/B0B2CUWF' target='_blank'><img src='https://az743702.vo.msecnd.net/cdn/kofi2.png?v=0' style={ buttonStyle } alt='Buy Me a Coffee at ko-fi.com' /></Link>
                  </div>
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
