import React, { Component } from 'react';

export default class Register extends Component {
  constructor(props) {
    super(props);

    this.state = {
      username: '',
      email: '',
      password: '',
      passwordConf: '',
      validUsername: false,
      validEmail: false,
      validPassword: false,
      validPasswordConf: false,
      valid: false
    }
  }

  validateUsername(event) {
    this.setState({username: event.target.value});
    console.log(this.state.username);
    if (this.state.username === 'test') {
      this.setState({validUsername: true});
    }

    else {
      this.setState({validUsername: false});
    }
  }

  render() {
    return(
      <main className="row">
      	<div className="item-three-quarter item__mobile">
      		<div className="pane pane-rounded padding-something bg-light">
      			<p className="pane-title display-big">Drinq User Registration</p>
      			<p className="pane-content text-dark text-center">Drinq wants to get to know you a little better. Please pick a username, set your password and enjoy.</p>
      			<form className="crutch-form text-center container-mobile">
      				<input type="text" name="username" id="username" placeholder="Username" className={ this.state.validUsername ? "input-long" : "input-long invalid" } onKeyUp={ (e) => this.validateUsername(e) }/>
      				<br />
      				<input type="text" name="email" id="email" placeholder="Email Address" className={ this.state.validEmail ? "input-long" : "input-long invalid" } />
      				<br />
      				<input type="password" name="password" id="password" placeholder="Password" className={ this.state.validPassword ? "input-long" : "input-long invalid" } />
      				<br />
      				<input type="password" name="passwordConf" id="passwordConf" placeholder="Please confirm password" className={ this.state.validPasswordConf ? "input-long" : "input-long invalid" } />
      				<br />
      				<input type="submit" name="submit" value="Go" className="margin-x-auto margin-top-something margin-bottom-enough button-long bg-dank text-white" />
      			</form>
      		</div>
      	</div>
      </main>
    );
  }
}
