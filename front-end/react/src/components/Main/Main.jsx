import React, { Component } from 'react';
import './main.css';
import PanelAside from './PanelAside/PanelAside';
import TableContainer from './TableContainer/TableContainer';

export default class Main extends Component {

    render() {
        return (
            <main className="main-component">
                <PanelAside />
                <TableContainer />
            </main>
        );
    }

}