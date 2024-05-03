import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PasswordRuleComponent } from './password-rule.component';

describe('PasswordRuleComponent', () => {
  let component: PasswordRuleComponent;
  let fixture: ComponentFixture<PasswordRuleComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [PasswordRuleComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(PasswordRuleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
