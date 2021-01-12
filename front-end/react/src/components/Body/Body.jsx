import React, { Component } from 'react';
import './body.css';
import Nav from '../Nav/Nav';
import Main from '../Main/Main';

export default class Body extends Component {

    render() {
        return (
            <div className="body-component">
                <Nav />
                <Main />
            </div>
        );
    }

}