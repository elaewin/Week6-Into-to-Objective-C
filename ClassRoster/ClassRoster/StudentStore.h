//
//  StudentStore.h
//  ClassRoster
//
//  Created by Erica Winberry on 11/16/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface StudentStore : NSObject

// create a singleton
+(instancetype)shared;

-(instancetype)init;

-(NSInteger)count;
-(NSArray *)allStudents;

-(void)add:(Student *)student;
-(void)remove:(Student *)student;

-(void)save;

@end
