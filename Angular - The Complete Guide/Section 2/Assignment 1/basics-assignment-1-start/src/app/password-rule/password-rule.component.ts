import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-password-rule',
  templateUrl: './password-rule.component.html',
  styleUrl: './password-rule.component.css'
})
export class PasswordRuleComponent {
  @Input() header: string = "";
  @Input() SuccessMessage: string = "";
  @Input() RulePass: boolean = false;

  constructor() {}
}
