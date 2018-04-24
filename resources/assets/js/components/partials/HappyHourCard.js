import React, { Component } from 'react';

export default class HappyHourCard extends Component {
  render() {
    return(
      <div className="item pane pane-rounded happy-hour-card bg-light text-dark container-mobile">
        <div className="happy-hour-card__content">
          <p className="pane-title">Testing</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus, excepturi similique, corporis labore tempore iusto reprehenderit expedita sequi cumque esse necessitatibus rerum nostrum quisquam veritatis dicta. Non sapiente cupiditate pariatur.</p>
        </div>
      </div>
    );
  }
}
