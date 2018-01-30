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

      	<div className="row">
      		<div className="item container-tablet pane padding-nothing">
      			<p className="pane-content">Drinq is a simple and clean web application to help you find out exactly where and when the nearest Happy Hour is. Drinq also offers its users the ability to rate and leave comments about each location.</p>
      		</div>
      	</div>
      </section>
    );
  }
}
