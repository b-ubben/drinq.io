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
    happyhours: this.props.data.happy_hours,
    distance: this.props.data.distance.toFixed(2),
    zoom: 12,
    open: false
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

  scrollToPane = () => {
    let map = document.querySelector('.happy-hour-map' + this.state.id);

    if (!this.state.open) {
      this.setState({ open: true });
      map.style.minHeight = '160px';
    } else {
      this.setState({ open: false });
      map.style.minHeight = '250px';
    }

    setTimeout( () => {
      document.querySelector('.focus' + this.state.id).focus();
    }, 1);
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
              scrollWheelZoom={ false }
              className={ 'happy-hour-map happy-hour-map' + this.state.id } >

              <TileLayer
              url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
              />

              <Marker position={ position }>
                <Popup>
                  <span className="map-marker-address">{ this.state.address }</span>
                </Popup>
              </Marker>
            </Map>

            <details className="item margin-x-nothing text-center">
              <summary onClick={ this.scrollToPane }>{ this.state.name }</summary>
              <div className="pane pane-rounded margin-top-enough scroll">
                <div className="pane-body padding-something">
                  <p className="padding-bottom-nothing">{ this.state.address }</p>
                  <p>~{ this.state.distance }mi from you</p>

                  <span>Happy Hours:</span><br />
                  { this.renderHappyhours() }<br />
                  <a href={ 'tel:' + this.state.phone }>{ this.state.phone }</a>
                </div>
              </div>
              <a className={ 'text-hide focus' + this.state.id } tabIndex="0">focus</a>
            </details>
          </div>
        </div>
      </div>
    );
  }
}
