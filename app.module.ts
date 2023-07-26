import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import {FormsModule} from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { EmployeeModule } from './employee/employee.module';
import { SquarePipe } from './square.pipe';
import { ReverseStringPipe } from './reverse.string.pipe';
import { AppChildComponent } from './app-child.componenet';
import { AddColorDirective } from './employee/addcolor.directive';
@NgModule({
  declarations: [
    AppComponent,
    SquarePipe,
    ReverseStringPipe,AppChildComponent,AddColorDirective
    

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    EmployeeModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
