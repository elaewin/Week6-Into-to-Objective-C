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
#import "AddStudentViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)addButtonPressed:(id)sender {
    [self performSegueWithIdentifier:@"AddNewStudentSegue" sender:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    
    NSArray *allStudents = [[StudentStore shared] allStudents];
    
    NSLog(@"Array of Students: %@", allStudents);
    
    NSLog(@"# of records in students array: %lu", (unsigned long)allStudents.count);
    
    //CREATE A NEW STUDENT TO SAVE
    
    Student *kitty = [[Student alloc]initWithFirstName:@"Katherine" lastName:@"Pride" email:@"shadowcat@xavier.edu" phone:@"847-548-8977"];
    
    [[StudentStore shared] add:kitty];
    
    Student *sam = [[Student alloc]initWithFirstName:@"Sam" lastName:@"Guthrie" email:@"cannonball@xavier.edu" phone:@"502-226-6062"];
    
    [[StudentStore shared] add:sam];
    
    Student *danielle = [[Student alloc]initWithFirstName:@"Danielle" lastName:@"Moonstar" email:@"mirage@xavier.edu" phone:@"303-647-2430"];
    
    [[StudentStore shared] add:danielle];

    Student *illyana = [[Student alloc]initWithFirstName:@"Illyana" lastName:@"Rasputina" email:@"magic@xavier.edu" phone:@"914-624-4263"];
    
    [[StudentStore shared] add:illyana];
    
    Student *rhane = [[Student alloc]initWithFirstName:@"Rhane" lastName:@"Sinclair" email:@"wolfsbane@xavier.edu" phone:@"914-965-3722"];
    
    [[StudentStore shared] add:rhane];
    
    Student *roberto = [[Student alloc]initWithFirstName:@"Roberto" lastName:@"da Costa" email:@"sunspot@xavier.edu" phone:@"914-786-7768"];
    
    [[StudentStore shared] add:roberto];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];

}

// - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//     [super prepareForSegue:segue sender:sender];
//     
//     if([segue.identifier isEqualToString:@"AddNewStudentSegue"]) {
//         AddStudentViewController *segueTargetVC = segue.destinationViewController;
//         
//     }
// }



// MARK: TableViewDataSource Protocol Methods

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
