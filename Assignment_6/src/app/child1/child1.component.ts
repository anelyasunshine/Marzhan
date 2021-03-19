import { Component, OnInit } from '@angular/core';
import {Share} from '../share';
import {ShareService} from '../share.service';


@Component({
  selector: 'app-child1',
  templateUrl: './child1.component.html',
  styleUrls: ['./child1.component.css']
})

export class Child1Component {
  shareList: Share[];


  constructor(private shareService: ShareService) {
  }

  getShares() {
    this.shareList = this.shareService.getShares();
  }
}
