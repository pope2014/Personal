import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-success-message',
  templateUrl: './success-message.component.html',
  styleUrl: './success-message.component.css'
})
export class SuccessMessageComponent {
  @Input() header: string = "";
  @Input() message: string = "";
  @Input() showMessage: boolean = true;

  constructor() {}
}
