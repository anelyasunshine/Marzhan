import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  constructor() { }
  imagePath: string = 'assets/images/elle.png';
  currentValue: boolean = false;

  ngOnInit(): void {
  }

}