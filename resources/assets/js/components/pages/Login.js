import React, { Component } from 'react';

export default class Login extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <main className="item-half">
      	<div className="pane pane-rounded bg-light padding-something">
      		<p className="pane-title display-medium">Please sign in to continue</p>
      		<form action="" className="crutch-form text-center">
      			<input type="text" name="username" id="username" className="input-long" placeholder="Username" />
      			<br />
      			<input type="password" name="password" id="password" className="input-long" placeholder="Password" />
      			<br />
      			<input type="submit" name="submit" value="Go" className="margin-x-auto margin-top-something button-long bg-dank text-white" />
      		</form>
      	</div>
      </main>
    );
  }
}
