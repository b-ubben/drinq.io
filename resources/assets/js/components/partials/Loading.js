import React, { Component } from 'react';
import { Redirect } from 'react-router-dom';


//import font-awesome
import FontAwesomeIcon from '@fortawesome/react-fontawesome';
import faCircleNotch from '@fortawesome/fontawesome-free-solid/faCircleNotch';

export default class Loading extends Component {
    state = {
      loading: true
    }

    componentDidMount() {
      setInterval(() => {
        this.setState({loading: false});
      }, 2600);
    }

    render() {
      const loading = this.state.loading;

      return(
        <div>
        <FontAwesomeIcon icon={ faCircleNotch } className="faCircleNotch" spin />

        { loading ? '' : <Redirect to ="/" /> }
        </div>
      );
    }
}
