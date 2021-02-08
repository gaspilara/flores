import React, { Component } from 'react';
import './TableComponent.css';

export default class TableComponent extends Component {

    render() {
        return (
            <table className="table table-dark table-striped table-hover table-borderless shadow-lg p-3 mb-5">
                <thead>
                    <tr>
                        <th>N°</th>
                        <th>Name</th>
                        <th>Detail</th>
                        <th>Price</th>
                        <th>Stock</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>8</td>
                        <td>Margarita</td>
                        <td>Margiada as cac asajhskdjha dajshd ak dk</td>
                        <td>$150</td>
                        <td></td>
                        <td><svg width="1em" height="1em" viewBox="0 0 16 16" className="bi bi-x-circle text-danger" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path fillRule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path fillRule="evenodd" d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/></svg></td>
                        <td><svg width="1em" height="1em" viewBox="0 0 16 16" className="bi bi-pencil-fill text-primary" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path fillRule="evenodd" d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/></svg></td>
                    </tr>
                </tbody>
            </table>
        );
    }

}