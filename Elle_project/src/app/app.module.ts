import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import {Routes, RouterModule} from '@angular/router';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { NavComponent } from './nav/nav.component';
import { NewsComponent } from './news/news.component';
import { AboutComponent } from './about/about.component';
import { GalleryComponent } from './gallery/gallery.component';
import { FooterComponent } from './footer/footer.component';

const appRoutes: Routes =[
  { path: 'about', component: AboutComponent},
  {path: 'gallery', component: GalleryComponent},
];

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    NavComponent,
    NewsComponent,
    AboutComponent,
    GalleryComponent,
    FooterComponent
  ],
  imports: [ BrowserModule, RouterModule.forRoot(appRoutes)],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
