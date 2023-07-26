import {Component ,Output,EventEmitter } from "@angular/core";
import { employee } from "./employee";

@Component({
    selector: 'emp-curd',
    templateUrl:'./employee-curd.component.html'
})

export class EmployeCurdComponent
{
    emp:employee= new employee(0,"",0,0);
    @Output()
    addEmployeeEvent:EventEmitter<employee>= new EventEmitter<employee>();
    addEmployee(empid:string,ename:string,salary:string,deptno:string)
    {
        this.addEmployeeEvent.emit(new employee
            (parseInt(empid),ename,parseFloat(salary),parseInt(deptno)));
    }
}