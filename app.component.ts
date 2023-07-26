import { Component } from '@angular/core';


@Component({
  selector: 'app-component',
  template:     `<h1 addcolor>welcome to angular world</h1>
                 <p addcolor >This is first para</p>`,
  
 /* <emp-list2></emp-list2>
  
  
  `<app-child-component pmessage="hello child" (childEvent)="receiveMessage($event)">
                </app-child-component><br/>
              <h1>Message from child is {{childMessage}}</h1>`*/
  
               
                  
  styleUrls: ['./app.component.css']
})
export class AppComponent 
{
  myname:string="bhanuprakash";
  // emp:employee= new employee(7001,"ajay saxena",25000.00,10);
   salary:number=2500.12345;
   doj=new Date();
  myshare:number=0.25111;
  my:string="bhanuprakash";
  myArr:number[]=[10,20,30,40,50];
  childMessage:string='';
 receiveMessage(message:string)
{
  this.childMessage=message;
}
  }
    

