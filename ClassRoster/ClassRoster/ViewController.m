//
//  ViewController.m
//  ClassRoster
//
//  Created by Erica Winberry on 11/16/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "ViewController.h"
#import "StudentStore.h"
#import "StudentTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    
    NSArray *allStudents = [[StudentStore shared] allStudents];
    
    NSLog(@"Array of Students: %@", allStudents);
    
    //CREATE A NEW STUDENT TO SAVE
    Student *newStudent = [[Student alloc]initWithFirstName:@"Adam" lastName:@"Wallraff" email:@"adam@someotheraddress.com" phone:@"206-555-9876"];
    
    [[StudentStore shared] add:newStudent];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[StudentStore shared] allStudents] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    StudentTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"StudentTableViewCell" forIndexPath:indexPath];
    
    Student *currentStudent = [[[StudentStore shared] allStudents] objectAtIndex:indexPath.row];
    
    cell.studentName.text = [NSString stringWithFormat:@"%@, %@", [currentStudent lastName], [currentStudent firstName]];
    
    cell.studentEmail.text = [NSString stringWithFormat:@"%@", [currentStudent email]];
    
    cell.studentPhone.text = [NSString stringWithFormat:@"%@", [currentStudent phone]];
    
    return cell;
    
}

@end
