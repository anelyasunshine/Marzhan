import { Component, OnInit } from '@angular/core';
import {Share} from '../share';
import {ShareService} from '../share.service';


@Component({
  selector: 'app-child3',
  templateUrl: './child3.component.html',
  styleUrls: ['./child3.component.css']
})
export class Child3Component implements OnInit {
  shareList3: Share[];
  constructor(private shareService: ShareService) {
  }

  ngOnInit(): void {
  }

  getShares3() {
    this.shareList3 = this.shareService.getShares3();
  }
}
