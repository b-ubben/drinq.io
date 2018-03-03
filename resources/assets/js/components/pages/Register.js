import React, { Component } from 'react';

export default class Register extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <main className="row">
      	<div className="item-three-quarter item__mobile">
      		<div className="pane pane-rounded padding-something bg-light">
      			<p className="pane-title display-big">Drinq User Registration</p>
      			<p className="pane-content text-dark text-center">Drinq wants to get to know you a little better. Please pick a username, set your password and enjoy.</p>
      			<form className="crutch-form text-center container-mobile" action="">
      				<input type="text" name="username" id="username" placeholder="Username" className="input-long" />
      				<br />
      				<input type="text" name="email" id="email" placeholder="Email Address" className="input-long" />
      				<br />
      				<input type="password" name="password" id="password" placeholder="Password" className="input-long" />
      				<br />
      				<input type="password" name="passwordConf" id="passwordConf" placeholder="Please confirm password" className="input-long" />
      				<br />
      				<input type="submit" name="submit" value="Go" className="margin-x-auto margin-top-something margin-bottom-enough button-long bg-dank text-white" />
      			</form>
      		</div>
      	</div>
      </main>
    );
  }
}
