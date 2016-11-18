//
//  AddStudentViewController.m
//  ClassRoster
//
//  Created by Erica Winberry on 11/17/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "AddStudentViewController.h"
#import "StudentStore.h"

@interface AddStudentViewController ()

@end

@implementation AddStudentViewController

- (IBAction)firstNameEntered:(id)sender {
}

- (IBAction)lastNameEntered:(id)sender {
}

- (IBAction)emailEntered:(id)sender {
}

- (IBAction)phoneEntered:(id)sender {
}

- (IBAction)addStudentButtonPressed:(id)sender {
    
    if(![_firstNameTextField.text isEqual:@""] && ![_lastNameTextField.text isEqual: @""] && ![_emailTextField.text isEqual:@""] && ![_phoneTextField isEqual:@""]) {
        
        Student *newStudent = [[Student alloc]initWithFirstName:self.firstNameTextField.text lastName:self.lastNameTextField.text email:self.emailTextField.text phone:self.phoneTextField.text];
        
        [[StudentStore shared] add:newStudent];
        
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.addStudentButton.layer.cornerRadius = 5;
    self.cancelButton.layer.cornerRadius = 5;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// MARK: TextFieldDelegate Methods

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    if(![self.firstNameTextField.text isEqual:@""] && ![self.lastNameTextField.text isEqual: @""] && ![self.emailTextField.text isEqual:@""] && ![self.phoneTextField isEqual:@""]) {
        [self setEnabled:YES];
    }
}


@end
