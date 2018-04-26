import React, { Component } from 'react';

export default class HappyHourCard extends Component {
  state = {
    selected: ''
  }

  render() {
    return(
      <div className="item pane pane-rounded happy-hour-card bg-light text-dark container-mobile">
        <div className="happy-hour-card__content">
          <p className="pane-title">Testing</p>
          {
            Object.values(this.props.data).map( (values, i) => <span key={ i }>{values}</span>)
          }
        </div>
      </div>
    );
  }
}
