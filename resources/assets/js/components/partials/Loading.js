import React, { Component } from 'react';
import { Redirect } from 'react-router-dom';
import { string, bool, number } from 'prop-types';


//import font-awesome icon
import FontAwesomeIcon from '@fortawesome/react-fontawesome';
import faCircleNotch from '@fortawesome/fontawesome-free-solid/faCircleNotch';

export default class Loading extends Component {
    state = {
      loading: true
    }

    static propTypes = {
      view: string,
      message: string,
      redirect: bool,
      waitTime: number
    }

    static defaultProps = {
      view: '',
      message: '',
      redirect: true,
      waitTime: 2000
    }

    componentDidMount() {
      setTimeout( () => {
        this.setState({ loading: false });
      }, this.props.waitTime);
    }


    render() {
      const loading = this.state.loading;
      const view = '/' + this.props.view;
      const redirect = this.props.redirect;

      if (!loading && redirect) {
        return(
          <Redirect to={ view } />
        );
      }

      if (loading) {
        return(
          <div className="loading-container">
            <FontAwesomeIcon icon={ faCircleNotch } className="faCircleNotch" spin />
            <p className="display-medium paddig-top-something text-center">{ this.props.message }</p>
          </div>
        );
      } else {
        return(<div></div>);
      }
    }
}
