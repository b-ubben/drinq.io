import React, { Component } from 'react';
import { object } from 'prop-types';

//import Leaflet
import { Map } from 'react-leaflet';

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
    distance: this.props.data.distance,
    zoom: 13
  }

  static propTypes = {
    data: object
  }

  render() {
    const position = [this.state.lat, this.state.long];

    return(
      <div className="item pane pane-rounded happy-hour-card bg-light text-dark container-mobile">
        <div className="happy-hour-card__content">
          <p className="pane-title">{ this.state.name }</p>
          <div className="pane-body">
            <p>{ this.state.address }</p>
            <p>{ this.state.lat }</p>
            <p>{ this.state.long }</p>

            <Map
              center={ this.state.position }
              zoom={ this.state.zoom } >
            </Map>

            <p>{ this.state.phone }</p>
            <p>{ this.state.distance.toFixed(2)}</p>
          </div>
        </div>
      </div>
    );
  }
}
