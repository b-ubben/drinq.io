import React, { Component } from 'react';
import { object } from 'prop-types';

//import Leaflet
import { Map, TileLayer, Marker, Popup } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';

export default class HappyHourCard extends Component {
  state = {
    id: this.props.data.location_id,
    name: this.props.data.location_name,
    zipcode: this.props.data.zip_code,
    lat: parseFloat(this.props.data.latitude),
    long: parseFloat(this.props.data.longitude),
    address: this.props.data.address,
    city: this.props.data.city,
    country: this.props.data.country,
    state: this.props.data.state,
    phone: this.props.data.display_phone,
    createdAt: this.props.data.created_at,
    updatedAt: this.props.data.updated_at,
    happyhours: JSON.parse(this.props.data.happy_hours),
    distance: this.props.data.distance.toFixed(2),
    zoom: 15
  }

  static propTypes = {
    data: object
  }

  renderHappyhours = () => {
    return Object.values(this.state.happyhours).map( (happyhour, i) =>
      <div key={ i }>
        <span>{ happyhour.day }:  { happyhour.start_time } - { happyhour.end_time }</span>
      </div>
    );
  }

  render() {
    const position = [this.state.lat, this.state.long];

    return(
      <div className="item pane pane-rounded happy-hour-card bg-light text-dark container-mobile">
        <div className="happy-hour-card__content">
          <div className="pane-body row">
            <Map
              center={ position }
              zoom={ this.state.zoom }
              className="happy-hour-map" >

              <TileLayer
              url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
              />

              <Marker position={ position } >
                <Popup>
                  <span>{ this.state.address }</span>
                </Popup>
              </Marker>
            </Map>

            <details className="item margin-x-nothing text-center">
              <summary>{ this.state.name }</summary>
              <div className="pane pane-rounded">
                <div className="pane-body padding-bottom-something">
                  <p className="padding-bottom-nothing">{ this.state.address }</p>
                  <p>~{ this.state.distance }mi from you</p>

                  <span>Happy Hours:</span><br />
                  { this.renderHappyhours() }<br />
                  <a href={ 'tel:' + this.state.phone }>{ this.state.phone }</a>
                </div>
              </div>
            </details>
          </div>
        </div>
      </div>
    );
  }
}
