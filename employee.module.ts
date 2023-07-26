import {NgModule} from '@angular/core';
import {EmployeeeListComponent} from './employee-list.component';
import {FormsModule} from '@angular/forms';
import {CommonModule} from '@angular/common';
import { EmployeeService } from './employee.service';
import { SalaryPipe } from './salary.pipe';
import { EmployeeListComponent2 } from './employee-list.component2';
import { EmployeeComponent } from './employee.component';
import { EmployeCurdComponent } from './employee-curd.component';
@NgModule({
    declarations:[EmployeeeListComponent,SalaryPipe,EmployeeListComponent2,EmployeeComponent,EmployeCurdComponent],
    imports:[FormsModule, CommonModule],
    exports:[EmployeeeListComponent,EmployeeListComponent2],
    providers:[EmployeeService]
})
export class EmployeeModule{

}
