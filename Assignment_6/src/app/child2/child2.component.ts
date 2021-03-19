import { Component, OnInit } from '@angular/core';
import {Share} from '../share';
import {ShareService} from '../share.service';

@Component({
  selector: 'app-child2',
  templateUrl: './child2.component.html',
  styleUrls: ['./child2.component.css']
})
export class Child2Component implements OnInit {
  shareList2: Share[];
  constructor(private shareService: ShareService) { }

  getShares2() {
    this.shareList2 = this.shareService.getShares2();
  }
  ngOnInit(): void {
  }
}
