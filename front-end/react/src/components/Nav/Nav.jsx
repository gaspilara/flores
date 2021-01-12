import React, { Component } from 'react';
import './nav.css';

export default class Nav extends Component {

    render() {
        return (
            <nav className="nav-component">
                <div className="seeAll-box">
                    <p>Ver Todo</p>
                    <div className="form-check form-switch">
                        <input className="form-check-input" type="checkbox" id="flexSwitchCheckDefault"/>
                    </div>
                </div>
                <div className="seeAll-box">
                    <p>Vista</p>
                    <p>Admin</p>
                </div>
           </nav>
        );
    }

}