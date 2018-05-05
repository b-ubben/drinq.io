import React, { Component } from 'react';
import {
  BrowserRouter as Router,
  Route,
  BrowserHistory,
  Link,
  Switch
} from 'react-router-dom';

//Import baseUrl
import { BASE_URL } from './partials/Path';

//Import pages
import Landing from './pages/Landing';
import About from './pages/About';
import Login from './pages/Login';
import Register from './pages/Register';
import NotFound from './pages/NotFound';
import LoggedOut from './pages/LoggedOut';
import HappyHoursResults from './pages/HappyHoursResults';
import Profile from './pages/Profile';
import Search from './pages/Search';
import ErrorMessage from './pages/ErrorMessage';
import AddHappyHourInformation from './pages/AddHappyHourInformation';

//Uncoment this import for testing
//import Loading from './partials/Loading';

export default class Main extends Component {
  render() {
    return(
      <Router>
        <div className="Main">
          <Switch>
            <Route exact path="/" component={ Landing } />
              <Route path="/about" component={ About } />
              <Route path="/login" component={ Login } />
              <Route path="/register" component={ Register } />
              <Route path="/loggedout" component={ LoggedOut } />
              <Route path="/results" component={ HappyHoursResults } />
              <Route path="/profile" component= { Profile } />
              <Route path="/search" component={ Search } />
              <Route path="/error" component={ ErrorMessage } />
              <Route path="/addhappyhour" component={ AddHappyHourInformation } />
            <Route component={ NotFound } />
          </Switch>
        </div>
      </Router>
    );
  }
}
