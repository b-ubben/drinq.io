import React, { Component } from 'react';
import { Redirect } from 'react-router-dom';
import { string } from 'prop-types';

//import partials
import Navigation from './../partials/Navigation';
import Footer from './../partials/Footer';
import { BASE_URL } from './../partials/Path';
import Loading from './../partials/Loading';

//import FontAwesome
import FontAwesomeIcon from '@fortawesome/react-fontawesome';
import faCheckCircle from '@fortawesome/fontawesome-free-solid/faCheckCircle';

export default class Register extends Component {
  state = {
    username: '',
    email: '',
    password: '',
    passwordConf: '',
    registerFeedback: '',
    validUsername: false,
    validEmail: false,
    validPassword: false,
    validPasswordConf: false,
    valid: false,
    isLoggedIn: false,
    failedRegistration: false,
    successfulRegistration: false
  }

  componentDidMount() {
    setInterval(this.clearMessage, 8000);
  }

  clearMessage = () => {
    if (this.state.registerFeedback) this.setState({registerFeedback: ''});
  }

  validateUsername = (e) => {
    this.setState({username: e.target.value.toLowerCase()}, () => {
      document.getElementById('username').value = this.state.username;
      // check that only alphanumeric characters are used
      if(!this.state.username.match(/^[a-z0-9]+$/i)) {
        this.setState({validUsername: false});
      }

      // make sure that usernames are 4 chars or greater
      if (this.state.username.length >= 4) {
        this.setState({validUsername: true});
      }
      else {
        this.setState({validUsername: false});
      }
    });
  }

  validateEmail = (e) => {
    // crazy regex for validating email...
    var emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    this.setState({email: e.target.value}, () => {
      if(this.state.email.match(emailRegex)) {
        this.setState({validEmail: true});
      } else {
        this.setState({validEmail: false});
      }
    });
  }

  validatePassword = (e) => {
    this.setState({password: e.target.value}, () => {
      if (this.state.password.length >= 5) {
        this.setState({validPassword: true});
      }
      else {
        this.setState({validPassword: false});
      }
    });
  }

  validatePasswordConf = (e) => {
    this.setState({passwordConf: e.target.value}, () => {
      if(this.state.password == this.state.passwordConf) {
        this.setState({validPasswordConf: true});
      } else {
        this.setState({validPasswordConf: false});
      }
    });
  }

  // set to the submit button. submit is disabled if qualifications aren't met.
  readyForSubmission = (e) => {
    if(this.state.validUsername && this.state.validEmail &&
      this.state.validPassword && this.state.validPasswordConf) {
      //must be here to stop from page reload after submit. Redirection must be handled by router..
      e.preventDefault();

      this.setState({valid: true}, () => {
        // code goes here for fetch to submit all parameters in the state.
        let registerData = JSON.stringify({
            username: this.state.username,
            email: this.state.email,
            password: this.state.password
        })

        // run the post request with the user registerData shown above
        axios.post(BASE_URL + '/register', registerData, {
              headers: {
                  'Content-Type': 'application/json',
              }
          }).then(response => {
            if(response.status == 200) {
              this.setState({successfulRegistration: true});
            }
          }).catch((error) => {
            this.setState({
              failedRegistration: true,
            });
            if (error.response.data.reason.email && error.response.data.reason.username) {
              this.setState({
                registerFeedback: error.response.data.reason.email + ' ' + error.response.data.reason.username
              });
            } else if(error.response.data.reason.email && !error.response.data.reason.username) {
              this.setState({registerFeedback: error.response.data.reason.email});
            } else {
              this.setState({registerFeedback: error.response.data.reason.username});
            }
          });
      });
    } else {
      // disable enter key/go button submission if requirements aren't met.
      e.preventDefault();
      this.setState({ registerFeedback: 'Fill in all the fields, please!' });
    }
  }

  render() {
    const validUsername = this.state.validUsername;
    const validEmail = this.state.validEmail;
    const validPassword = this.state.validPassword;
    const validPasswordConf = this.state.validPasswordConf;
    const valid = this.state.valid;
    const failedRegistration = this.state.failedRegistration;
    const successfulRegistration = this.state.successfulRegistration;

    if (successfulRegistration) {
      return(
        <div>
          <Navigation />
          <Loading message="Registering new user.." view="login" />
          <Footer view="login" />
        </div>
      );
    } else {
      return(
        <div>
          <Navigation />
          <div className="row text-main">
          	<div className="item item__mobile container-mobile padding-bottom-enough">
          		<div className="pane pane-rounded padding-something margin-top-enough bg-light">
            		<p className="pane-title display-big">Drinq User Registration</p>
                <p className="pane-content text-center container-mobile padding-something">Drinq wants to get to know you a little better. Please pick a username, set your password and enjoy.</p>

          			<form className="crutch-form text-center container-mobile">
                  {(this.state.registerFeedback) ? <p className="alert-failure">{this.state.registerFeedback}</p> : ''}

            			<input type="text" name="username" id="username" placeholder="Username" className="input-long" onChange={ this.validateUsername } />
                  { validUsername ? <p className="small margin-top-nothing">Valid Username <FontAwesomeIcon icon={ faCheckCircle } color="green"/></p> : <p className="small margin-top-nothing">Username must be alphanumeric and 4+ characters long.</p> }

                  <input type="text" name="email" id="email" placeholder="Email Address" className="input-long" onChange={ this.validateEmail } />
                  { validEmail ? <p className="small margin-top-nothing">Valid Email Address <FontAwesomeIcon icon={ faCheckCircle } color="green"/></p> : <p className="small margin-top-nothing">Email address must be properly formatted.</p> }

                  <input type="password" name="password" id="password" placeholder="Password" className="input-long" onChange={ this.validatePassword } />
                  { validPassword ? <p className="small margin-top-nothing">Valid Password <FontAwesomeIcon icon={ faCheckCircle } color="green"/></p> : <p className="small margin-top-nothing">Password must be greater than 5 characters. Make it strong!</p> }

                  <input type="password" name="passwordConf" id="passwordConf" placeholder="Please confirm password" className="input-long" onChange={ this.validatePasswordConf } />
                  { validPasswordConf ? <p className="small margin-top-nothing">Passwords Match <FontAwesomeIcon icon={ faCheckCircle } color="green"/></p> : <p className="small margin-top-nothing">Please confirm your password by typing it again.</p> }

                  <button className="padding-something border border-color-grey rounded-border button-long bg-dank text-white" onClick={ this.readyForSubmission }>Register</button>
          			</form>
          		</div>
          	</div>
          </div>
          <Footer view="login" />
        </div>
      );
    }
  }
}
