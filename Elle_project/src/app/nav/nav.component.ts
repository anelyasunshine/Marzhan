import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-nav',
  templateUrl: './nav.component.html',
  styleUrls: ['./nav.component.css']
})
export class NavComponent implements OnInit {
  links =["Винтаж","Мода","Красота","Звезды","Отношения","Гороскопы"];
  constructor() { }

  ngOnInit(): void {
  }

}
