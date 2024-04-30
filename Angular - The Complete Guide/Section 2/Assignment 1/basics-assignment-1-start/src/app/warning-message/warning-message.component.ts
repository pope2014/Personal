import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-warning-message',
  templateUrl: './warning-message.component.html',
  styleUrl: './warning-message.component.css'
})
export class WarningMessageComponent {
  @Input() header: string = ''; // Default header
  @Input() message: string = ''; // Default message
  @Input() showWarning: boolean = true; // Default to visible

  constructor() { }

}
