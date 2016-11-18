//
//  AddStudentViewController.h
//  ClassRoster
//
//  Created by Erica Winberry on 11/17/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "ViewController.h"

@interface AddStudentViewController : ViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;

@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;

@property (weak, nonatomic) IBOutlet UIButton *addStudentButton;

@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

@property(nonatomic, getter=isEnabled) BOOL enabled;

@end
