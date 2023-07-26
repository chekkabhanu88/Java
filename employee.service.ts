import { empData } from "./employee-data";
import { employee } from "./employee";
export class EmployeeService
{
    public getAllEmployees():employee[]
    {
        return empData;
    }
}