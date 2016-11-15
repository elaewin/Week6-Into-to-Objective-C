//
//  Employee.m
//  Week6Labs
//
//  Created by Erica Winberry on 11/14/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "Employee.h"

@implementation Employee

NSInteger *_employeeNumber;
NSInteger *_yearsEmployed;
NSString *_managersName;

// getters
-(NSInteger *)employeeNumber{
    return _employeeNumber;
}

-(NSInteger *)yearsEmployed{
    return _yearsEmployed;
}

-(NSString *)managersName{
    return _managersName;
}

// setters

-(void)setEmployeeNumber:(NSInteger *)employeeNumber{
    _employeeNumber = employeeNumber;
}

-(void)setYearsEmployed:(NSInteger *)yearsEmployed{
    _yearsEmployed = yearsEmployed;
}

-(void)setManagersName:(NSString *)managersName{
    _managersName = managersName;
}

@end
