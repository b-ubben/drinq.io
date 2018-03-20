import React, { Component } from 'react';
import { Redirect } from 'react-router-dom';

export default class Login extends Component {
  state = {
      hasBeenSubmitted: false,
      username: '',
      password: ''
  }

  handleUsername = (e) => {
    this.setState({ username: e.target.value }, () => {
      //validation happens here
      console.log('Username: ' + this.state.username);
    });
  }

  handlePassword = (e) => {
    this.setState({ password: e.target.value }, () => {
      //validation happens here
      console.log('Password: ' + this.state.password);
    });
  }

  handleLogIn = (e) => {
    e.preventDefault();
    //test credentials used to simulate proper credentials on DB
    if (this.state.username == 'test' && this.state.password == 'test') {
      sessionStorage.setItem('isLoggedIn', 'true');
      this.setState({hasBeenSubmitted: true});
      console.log(sessionStorage.getItem('isLoggedIn'));
    } else {
      console.log('Incorrect credentials!!');
    }
  }

  render() {
    if (this.state.hasBeenSubmitted) {
      return(<Redirect to='/' />);
    }

    return(
      <main className="item-three-quarter item__mobile">
      	<div className="pane pane-rounded bg-light padding-something">
      		<p className="pane-title display-medium">Please sign in to continue</p>
      		<form action="" className="crutch-form text-center container-mobile">
      			<input type="text" name="username" id="username" className="input-long" placeholder="Username" onChange={ this.handleUsername }/>
      			<br />
      			<input type="password" name="password" id="password" className="input-long" placeholder="Password" onChange={ this.handlePassword }/>
      			<br />
      			<input type="submit" name="submit" value="Go" className="margin-x-auto margin-top-something margin-bottom-enough button-long bg-dank text-white" onClick={ this.handleLogIn }/>
      		</form>
      	</div>
      </main>
    );
  }
}
