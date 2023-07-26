import { Directive,ElementRef, HostBinding, HostListener } from "@angular/core";

@Directive({
    selector: '[addcolor]'

})
export class AddColorDirective
{
    constructor(private elementRef:ElementRef)
    {
       this.elementRef.nativeElement.style.backgroundColor='red';
    }
    @HostBinding('style.backgroundColor')bgcolor:string='';
    @HostBinding('style.Color')bgcolor1:string='';
    @HostListener('mouseover')
    mouseover()
    {
          this.bgcolor="red";
          this.bgcolor1="green"
    }
    @HostListener('mouseleave')
    mouseleave()
    {
        this.bgcolor='blue';
        
    }
}