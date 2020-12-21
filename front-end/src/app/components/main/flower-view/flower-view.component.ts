import { Component, OnInit } from '@angular/core';
import { Flower } from '../../../models/flower/flower';
import { FlowerService } from '../../../models/flower/flower.model.service';

@Component({
  selector: 'app-flower-view',
  templateUrl: './flower-view.component.html',
  styleUrls: ['./flower-view.component.scss']
})
export class FlowerViewComponent implements OnInit {                                                                                            

  public flowers: Flower[] = [];

  constructor(private flowerService: FlowerService) {
    this.flowerService.fetchFlowers()
      .subscribe( p => this.flowers = p ); 
  } 

  ngOnInit(): void {
  }



}
