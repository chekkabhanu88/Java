import { AfterViewInit, Component, OnChanges, OnInit, SimpleChanges } from "@angular/core";
import { employee } from "./employee";
import { EmployeeService } from "./employee.service";

@Component({
    selector:'emp-list2',
    templateUrl:'./employee-list.component2.html',
})
export class EmployeeListComponent2 implements OnChanges,OnInit,AfterViewInit
{
    empList:employee[]=[];
    constructor(private employeeService:EmployeeService)
    {
        this.empList=employeeService.getAllEmployees();
    }
    deleteEmployee(empid:number)
    {
        for(var i=0; i<this.empList.length;i++)
        {
            if(this.empList[i].empid==empid)
                this.empList.splice(i,1);
                return ;
        }
    }
    ngOnChanges(): void 
    {
       console.log("employeelistcomponent2 is changed"); 
    }
    ngOnInit(): void 
    {
       console.log("employeelistcomponent2 is initalised"); 
    }
    addEmployee(emp:employee)
    {
        this.empList.push(emp);
    }

    ngAfterViewInit(): void 
    {
        console.log("view is initialised");
    }
}