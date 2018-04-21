import React, { Component } from 'react';
import { Redirect } from 'react-router-dom';
import { string } from 'prop-types';


//import font-awesome icon
import FontAwesomeIcon from '@fortawesome/react-fontawesome';
import faCircleNotch from '@fortawesome/fontawesome-free-solid/faCircleNotch';

export default class Loading extends Component {
    state = {
      loading: true
    }

    static propTypes = {
      view: string,
      message: string
    }

    static defaultProps = {
      view: '',
      message: ''
    }

    componentDidMount() {
      setTimeout( () => {
        this.setState({ loading: false });
      }, 2000);
    }

    render() {
      const loading = this.state.loading;
      const view = '/' + this.props.view;

      if (!loading) {
          return(
          <Redirect to={ view } />
        );
      }

      return(
        <div className="loading-container">
          <FontAwesomeIcon icon={ faCircleNotch } className="faCircleNotch" spin />
          <p className="display-medium paddig-top-something text-center">{ this.props.message }</p>
        </div>
      );
    }
}
