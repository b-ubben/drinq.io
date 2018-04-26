import React, { Component } from 'react';
import { object } from 'prop-types';

export default class HappyHourCard extends Component {
  state = {
    id: this.props.data.location_id,
    name: this.props.data.location_name,
    zipcode: this.props.data.zip_code,
    lat: this.props.data.latitude,
    long: this.props.data.longitude,
    address: this.props.data.address,
    city: this.props.data.city,
    country: this.props.data.country,
    state: this.props.data.state,
    phone: this.props.data.display_phone,
    createdAt: this.props.data.created_at,
    updatedAt: this.props.data.updated_at,
    happyhours: this.props.data.happy_hours,
    distance: this.props.data.distance
  }

  static propTypes = {
    data: object
  }

  render() {
    return(
      <div className="item pane pane-rounded happy-hour-card bg-light text-dark container-mobile">
        <div className="happy-hour-card__content">
          <p className="pane-title">{ this.state.name }</p>
          <div className="pane-body">
            <p>{ this.state.address }</p>
            <p>{ this.state.lat }</p>
            <p>{ this.state.long }</p>
            <p>{ this.state.phone }</p>
            <p>{ this.state.distance}</p>
          </div>
        </div>
      </div>
    );
  }
}
