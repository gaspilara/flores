import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

//COMPONENTS
import { HomeComponent } from '../app/components/main/home/home.component';
import { FlowerViewComponent } from '../app/components/main/flower-view/flower-view.component';

const routes: Routes = [

  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent },
  { path: 'flower', component: FlowerViewComponent },

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
