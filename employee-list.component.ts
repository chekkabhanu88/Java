import { Component } from "@angular/core";
import{employee} from './employee';
import{empData} from './employee-data';
import { EmployeeService } from "./employee.service";

@Component({
    selector:'emp-list',
    templateUrl:'./employee-list.component.html'
    
})
export class EmployeeeListComponent
{
    emplist:employee[];
     public constructor(private employeeService:EmployeeService)
     {
        this.emplist=this.employeeService.getAllEmployees();
     }
    

   public DeleteEmployeeRow (index:number)
   {
    this.emplist.splice(index,1);
   }

}
