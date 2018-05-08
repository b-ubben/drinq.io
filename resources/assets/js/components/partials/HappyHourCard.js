import React, { Component } from 'react';
import { object } from 'prop-types';
import { Link } from 'react-router-dom';

// import pigeon-maps
import Map from 'pigeon-maps';
import Marker from 'pigeon-marker';
import Overlay from 'pigeon-overlay';

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

  happyHoursRender = () => {
    console.log(document.querySelector('.happyhours-container').style);
  }

  scrollToBottom = () => {
    this.setState( prevState => ({
      open: !prevState.open
    }));
    setTimeout( () => {
      document.querySelector('.focus' + this.state.id).focus();
    }, 1);
  }

  setLocationIdToAdd() {
    sessionStorage.setItem('locationIdToAdd', this.state.id);
  }

  render() {
    const position = [this.state.lat, this.state.long];
    const happyhours = this.state.happyhours;
    const open = this.state.open;
    const zoom = this.state.zoom;

    return(
      <div className="item pane pane-rounded happy-hour-card bg-light text-main container-mobile">
        <div className="happy-hour-card__content">
          <div className="pane-body row">

            <Map center={ position } zoom={ zoom } width={ 300 } height={open ? 175 : 250} attribution={ false }
              zoomOnMouseWheel={ true } className="pigeon-map">
              <Marker anchor={ position } />
            </Map>

            <details className="item margin-x-nothing text-center text-main location">
              <summary onClick={ this.scrollToBottom }>{ this.state.name }</summary>
              <div className="pane pane-rounded margin-top-enough scroll">
                <div className="pane-body padding-something">
                  <p className="padding-bottom-nothing">{ this.state.address }</p>
                  <p>~{ this.state.distance }mi from you</p>
                  <a href={ 'tel:' + this.state.phone }>{ this.state.phone }</a>
                </div>

                <p className="padding-bottom-something">No happy hour info yet. Do you know when their happy hours are? <Link to="addhappyhour" onClick={ this.setLocationIdToAdd() }>Add a happy hour here.</Link></p>

              </div>
              <a className={ 'text-hide focus' + this.state.id } tabIndex="0">focus</a>
            </details>

          </div>
        </div>
      </div>
    );
  }
}
