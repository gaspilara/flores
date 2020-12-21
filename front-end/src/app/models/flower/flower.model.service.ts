import { Injectable } from '@angular/core';
import { Flower } from './flower';
import { Observable } from 'rxjs'
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class FlowerService {

  private url: string = "http://localhost/proyectos/flores-php/back-end/api/flowers";

  constructor( private http: HttpClient ) { }

  fetchFlowers(): Observable<Flower[]> {
    return this.http.get<Flower[]>( this.url );
  }
  
}