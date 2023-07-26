import {Pipe,PipeTransform} from '@angular/core';
import { employee } from './employee';
import { empData } from './employee-data';
@Pipe({name:'salary1'})
export class SalaryPipe implements PipeTransform
{
    empd:employee[] =[];

    transform(value: any[]) {

    for(var i=0;i<empData.length;i++)
    {    var j=0;
        if(empData[i].salary>1000)
        {
            this.empd[j]=empData[i];
            j=j+1;
        }
    }
            return this.empd;
    }
  
}
