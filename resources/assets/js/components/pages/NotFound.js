import React, { Component } from 'react';
import { Link } from 'react-router-dom';

export default class NotFound extends Component {
  render() {
    return(
      <main className="row">
        <div className="item">
          <div className>
            <p className="text-center display-biggest">Not Found!</p>
            <p className="text-center small">Please head back to our <Link to="/">home page.</Link></p>
          </div>
        </div>
      </main>
    );
  }
}
