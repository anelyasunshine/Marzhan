import {​​​​​​​Routes}​​​​​​​ from "@angular/router";
import {​​​​​​​ AppComponent }​​​​​​​ from './app.component';
import {​​​​​​​ HeaderComponent }​​​​​​​ from './header/header.component';
import {​​​​​​​ AboutComponent }​​​​​​​ from './about/about.component';
import {​​​​​​​ NavComponent }​​​​​​​ from './nav/nav.component';
export const routes: Routes = [
    {​​​​​​​path: 'header', component: HeaderComponent}​​​​​​​,  
    {​​​​​​​path: "about", component: AboutComponent}​​​​​​​, 
    {​​​​​​​path: "nav", component: NavComponent}​​​​​​​
]