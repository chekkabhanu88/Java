import { Component,EventEmitter,Input,OnDestroy,OnInit,Output} from "@angular/core";
import { employee } from "./employee";


@Component({
    selector:'emp-component',
    template:`<table border="1" width="50%">
    <tr>
        <th>EmployeeId</th>
        <td>{{eobj.empid}}</td>
    </tr>
    <tr>
        <th>Employee name</th>
        <td>{{eobj.ename}}</td>
    </tr>
    <tr>
        <th>Employee salary</th>
        <td>{{eobj.salary}}</td>
    </tr>
    <tr>
        <th>Department No</th>
        <td>{{eobj.deptno}}</td>
    </tr>
    <tr>
        <th>Action</th>
        <td><input type ="button" value="delete" (click)="delete(eobj.empid)"></td>
</table>
    `
})
export class EmployeeComponent implements OnInit,OnDestroy
{
    @Input()
    eobj:any;


    @Output()
    deleteEvent :EventEmitter<number>= new EventEmitter<number>();

    delete(empid:number)
    {
        this.deleteEvent.emit(empid);
    }

    ngOnInit()
    {
        console.log('Employee Component is Initalised');
    }
    ngOnDestroy()
    {
        console.log("employee component is deleted");
    }
}