import React, { Component } from 'react';
import { string } from 'prop-types';

export default class Login extends Component {
  state = {
      isValid: false,
      username: '',
      password: ''
  }

  handleUsername = (e) => {
    //Validation goes here
  }

  render() {
    return(
      <main className="item-three-quarter item__mobile">
      	<div className="pane pane-rounded bg-light padding-something">
      		<p className="pane-title display-medium">Please sign in to continue</p>
      		<form action="" className="crutch-form text-center container-mobile">
      			<input type="text" name="username" id="username" className="input-long" placeholder="Username" onChange={ this.handleUsername }/>
      			<br />
      			<input type="password" name="password" id="password" className="input-long" placeholder="Password" />
      			<br />
      			<input type="submit" name="submit" value="Go" className="margin-x-auto margin-top-something margin-bottom-enough button-long bg-dank text-white" />
      		</form>
      	</div>
      </main>
    );
  }
}
