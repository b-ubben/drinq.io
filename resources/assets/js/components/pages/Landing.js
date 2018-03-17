import React, { Component } from 'react';

export default class Landing extends Component {
  render() {
    return(
      <section>
      	<div className="row">
      		<div className="item">
      			<p className="display-big text-center">Looking for the Nearest Happy Hour?</p>
      		</div>
      	</div>

      	<div className="row container-tablet">
      		<div className="item pane">
      			<p className="pane-content text-center margin-bottom-nothing">Please enter your zipcode. We'll serach for nearby locations and tell you if their Happy Hour is anytime soon!</p>

            <form className="crutch-form container-mobile padding-something margin-y-something">
              <input type="text" className="input-long border rounded-border"/>
              <button className="padding-something border border-color-grey rounded-border button-long bg-dank text-white">Go</button>
            </form>
      		</div>
      	</div>

      </section>
    );
  }
}
