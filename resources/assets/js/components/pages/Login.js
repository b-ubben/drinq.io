import React, { Component } from 'react';
import { Redirect } from 'react-router-dom';
import { string } from 'prop-types';

//import partials
import Navigation from './../partials/Navigation';
import Messages from './../partials/Messages';
import Footer from './../partials/Footer';

export default class Login extends Component {
  state = {
      hasLoggedInSuccessfully: false,
      isLoggedIn: false,
      username: '',
      password: '',
  }

  static propTypes = {
    baseUrl: string
  }

  static defaultProps = {
    baseUrl: sessionStorage.getItem('baseUrl')
  }

  handleUsername = (e) => {
    this.setState({ username: e.target.value });
  }

  handlePassword = (e) => {
    this.setState({ password: e.target.value });
  }

  handleLogIn = (e) => {
    if(this.state.username != '' && this.state.password != '') {
      e.preventDefault();
      // submit the data in the login form
      let loginData = JSON.stringify({
          username: this.state.username,
          password: this.state.password
      })
      // submit the actual data to the db and see if they log in
      axios.post(this.props.baseUrl + '/auth/login', loginData, {
        headers: {
          'Content-Type': 'application/json',
        }
      }).then(response => {
        if(response.status == 200) {
          // console.log(response.data.token);
          sessionStorage.setItem('token', response.data.token);
          this.setState({isLoggedIn: true});
          console.log(sessionStorage.getItem('token'));
        }
      }).catch((error) => {
        if(error.response.status == 401) {
          console.log("Unable to log in");
        }
      });
    } else {
      e.preventDefault();
    }
  }

  render() {
    if (this.state.hasLoggedInSuccessfully) {
      return(<Redirect to='/' />);
    }

    return(
      <div>
        <Navigation isLoggedIn={ this.state.isLoggedIn }/>
        <Messages />

        <main className="item-three-quarter item__mobile">
        	<div className="pane pane-rounded bg-light padding-something">
        		<p className="pane-title display-medium">Please sign in to continue</p>
            <p className="text-center text-dark">Enter your username and password.</p>
        		<form action="" className="crutch-form text-center container-mobile">
        			<input type="text" name="username" id="username" className="input-long" placeholder="Username" onChange={ this.handleUsername }/>
        			<br />
        			<input type="password" name="password" id="password" className="input-long" placeholder="Password" onChange={ this.handlePassword }/>
        			<br />
        			<input type="submit" name="submit" value="Go" className="margin-x-auto margin-top-something margin-bottom-enough button-long bg-dank text-white" onClick={ this.handleLogIn }/>
        		</form>
        	</div>
        </main>

        <Footer />
      </div>
    );
  }
}
