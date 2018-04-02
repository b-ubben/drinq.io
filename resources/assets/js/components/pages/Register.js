import React, { Component } from 'react';
import { string } from 'prop-types';

//import partials
import Navigation from './../partials/Navigation';
import Messages from './../partials/Messages';
import Footer from './../partials/Footer';

//import FontAwesome
import FontAwesomeIcon from '@fortawesome/react-fontawesome';
import faCheckCircle from '@fortawesome/fontawesome-free-solid/faCheckCircle';

export default class Register extends Component {
  state = {
    username: '',
    email: '',
    password: '',
    passwordConf: '',
    validUsername: false,
    validEmail: false,
    validPassword: false,
    validPasswordConf: false,
    valid: false,
    isLoggedIn: false
  }

  static defaultProps = {
    baseUrl: sessionStorage.getItem('baseUrl')
  }

  static propTypes = {
    baseUrl: string.isRequired
  }

    /*
    *  setState is asynchronous, so if you want to print the new state, you have to use the callback parameter.
    *  this means that in setState, you do a callback function that will actually handle the validation.
    *  before, the wrong length was being thrown out and it was skipping the last character entered. this resolves that problem.
    */
  validateUsername = (e) => {
    this.setState({username: e.target.value}, () => {

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
        console.log("Valid email!!!: " + this.state.email);
        this.setState({validEmail: true});
      } else {
        console.log("Email: " + this.state.email + " is invalid. Enter another one!!");
        this.setState({validEmail: false});
      }
    });
  }

  validatePassword = (e) => {
    this.setState({password: e.target.value}, () => {
      if (this.state.password.length >= 5) {
        console.log("Valid!");
        this.setState({validPassword: true});
      }
      else {
        console.log("Password must be greater than or equal to 5 chars");
        this.setState({validPassword: false});
      }
    });
  }

  validatePasswordConf = (e) => {
    this.setState({passwordConf: e.target.value}, () => {
      if(this.state.password == this.state.passwordConf) {
        console.log("Password Confirmation Confirmed!!!!");
        this.setState({validPasswordConf: true});
      } else {
        console.log("Password confirmation failed :(");
        this.setState({validPasswordConf: false});
      }
    });
  }

  // set to the submit button. submit is disabled if qualifications aren't met.
  readyForSubmission = (e) => {
    if(this.state.validUsername && this.state.validEmail &&
      this.state.validPassword && this.state.validPasswordConf) {

      this.setState({valid: true}, () => {
        // code goes here for fetch to submit all parameters in the state.
        let loginData = JSON.stringify({
            username: this.state.username,
            email: this.state.email,
            password: this.state.password,
        })

        // run the post request with the user loginData shown above
        axios.post(this.props.baseUrl + '/register', loginData, {
              headers: {
                  'Content-Type': 'application/json',
              }
          }
        )
      });
    } else {
      // disable enter key/go button submission if requirements aren't met.
      e.preventDefault();
    }
  }

  render() {
    const validUsername = this.state.validUsername;
    const validEmail = this.state.validEmail;
    const validPassword = this.state.validPassword;
    const validPasswordConf = this.state.validPasswordConf;

    return(
      <div>
        <Navigation isLoggedIn={ this.state.isLoggedIn }/>
        <Messages />

        <main className="row">
        	<div className="item-three-quarter item__mobile">
        		<div className="pane pane-rounded padding-something margin-top-enough bg-light">
          		<p className="pane-title display-big">Drinq User Registration</p>
              <p className="pane-content text-dark text-center container-mobile padding-something">Drinq wants to get to know you a little better. Please pick a username, set your password and enjoy.</p>

        			<form className="crutch-form text-center text-dark container-mobile">
          			<input type="text" name="username" id="username" placeholder="Username" className="input-long" onChange={ this.validateUsername } />
                { validUsername ? <p className="small margin-top-nothing">Valid Username <FontAwesomeIcon icon={faCheckCircle} color="green"/></p> : <p className="small margin-top-nothing">Username must be alphanumeric and 4+ characters long.</p> }

                <input type="text" name="email" id="email" placeholder="Email Address" className="input-long" onChange={ this.validateEmail } />
                { validEmail ? <p className="small margin-top-nothing">Valid Email Address <FontAwesomeIcon icon={faCheckCircle} color="green"/></p> : <p className="small margin-top-nothing">Email address must be properly formatted.</p> }

                <input type="password" name="password" id="password" placeholder="Password" className="input-long" onChange={ this.validatePassword } />
                { validPassword ? <p className="small margin-top-nothing">Valid Password <FontAwesomeIcon icon={faCheckCircle} color="green"/></p> : <p className="small margin-top-nothing">Password must be greater than 5 characters. Make it strong!</p> }

                <input type="password" name="passwordConf" id="passwordConf" placeholder="Please confirm password" className="input-long" onChange={ this.validatePasswordConf } />
                { validPasswordConf ? <p className="small margin-top-nothing">Passwords Match <FontAwesomeIcon icon={faCheckCircle} color="green"/></p> : <p className="small margin-top-nothing">Please confirm your password by typing it again.</p> }

          			<input type="submit" name="submit" value="Go" className="margin-x-auto margin-top-something margin-bottom-enough button-long bg-dank text-white" onClick={ this.readyForSubmission } />
        			</form>
        		</div>
        	</div>
        </main>

        <Footer />
      </div>
    );
  }
}
