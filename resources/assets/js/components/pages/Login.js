import React, { Component } from 'react';
import { Link, Redirect } from 'react-router-dom';
import { string } from 'prop-types';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';
import { BASE_URL } from './../partials/Path';
import Loading from './../partials/Loading';

export default class Login extends Component {
  state = {
      hasLoggedInSuccessfully: false,
      isLoggedIn: false,
      username: '',
      password: '',
      loginFeedback: ''
  }

  componentDidMount() {
    setTimeout(this.clearMessage, 8000);
  }

  clearMessage = () => {
    if (this.state.loginFeedback) this.setState({loginFeedback: ''});
  }

  handleUsername = (e) => {
    this.setState({username: e.target.value.toLowerCase()}, () => {
      document.getElementById('username').value = this.state.username;
    });
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
      axios.post(BASE_URL + '/auth/login', loginData, {
        headers: {
          'Content-Type': 'application/json',
        }
      }).then(response => {
        if(response.status == 200) {
          sessionStorage.setItem('token', response.data.token);
          sessionStorage.setItem('username', response.data.username);
          this.setState({isLoggedIn: true});
        }
      }).catch((error) => {
        if(error.response.status === 401) {
          this.setState({loginFeedback: error.response.data.reason});
        }
      });
    } else {
      e.preventDefault();
      this.setState({ loginFeedback: 'Fill in those fields!'});
    }
  }

  render() {
    const isLoggedIn = this.state.isLoggedIn;

    return(
      <div>
        <Navigation />
        { isLoggedIn ? <Loading message={'Logging you in, ' + sessionStorage.getItem('username')} /> : ''}
        <main className="item item__mobile container-mobile">
        	<div className="pane pane-rounded bg-light padding-something">
        		<p className="pane-title display-medium">Please sign in to continue</p>
            <p className="text-center text-main">Enter your username and password. Not a registered user yet? Register <Link to="register">here</Link>.</p>
        		<form action="" className="crutch-form text-center container-mobile">
              {(this.state.loginFeedback) ? <p className="alert-failure">{this.state.loginFeedback}</p> : ''}
        			<input type="text" name="username" id="username" className="input-long" placeholder="Username" onChange={ this.handleUsername }/>
        			<br />
        			<input type="password" name="password" id="password" className="input-long" placeholder="Password" onChange={ this.handlePassword }/>
        			<br />
        			<button className="padding-something border border-color-grey rounded-border button-long bg-dank text-white margin-top-something" onClick={ this.handleLogIn }>Go</button>
        		</form>
        	</div>
        </main>

        <Footer view="login" />
      </div>
    );
  }
}
