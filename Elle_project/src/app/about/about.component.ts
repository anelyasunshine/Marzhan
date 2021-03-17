import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-about',
  templateUrl: './about.component.html',
  styleUrls: ['./about.component.css']
})
export class AboutComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }
  users = [{
    id: 100,
    firstName: "Ramesh",
    lastName: "Fadatare",
    emailId: "ramesh@gmail.com"
  },
  {
    id: 101,
    firstName: "Tony",
    lastName: "Stark",
    emailId: "tony@gmail.com"
  }, {
    id: 100,
    firstName: "Tom",
    lastName: "Cruise",
    emailId: "tom@gmail.com"
  }];
}
