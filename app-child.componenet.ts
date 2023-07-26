import { Component , Input,Output,EventEmitter} from "@angular/core";

@Component({
    selector:'app-child-component',
    template:`<h1> Message from parent is {{pmessage}}</h1>
    <input type="button" value="send message" (click)="sendmessage()"/>`
})
export class AppChildComponent
{
    @Input()  //indicates that the following property gets input from its parent component
    pmessage:string='';
    @Output()
    childEvent= new EventEmitter<string>();
    sendmessage()
    {
        this.childEvent.emit("Hello Parent");
    }
}