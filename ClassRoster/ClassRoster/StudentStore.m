//
//  StudentStore.m
//  ClassRoster
//
//  Created by Erica Winberry on 11/16/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "StudentStore.h"

// Extension of StudentStore class
@interface StudentStore()

// Underlying/Backing Students Array
@property(strong, nonatomic)NSMutableArray *students;

@end


@implementation StudentStore

// Objective-C singleton:
+(instancetype)shared {
    
    static StudentStore *shared = nil;
    
    // Use "Dispatch Once" from Grand Central Dispatch (GCD)
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[StudentStore alloc]init];
    });
    
    return shared;
}

-(instancetype)init {
    self = [super init];
    
    if (self) {
        self.students = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
        
        if(!self.students) {
            self.students = [[NSMutableArray alloc]init];
        }
    }
    
    return self;
}

-(NSInteger)count {
    return self.students.count;
}

-(NSArray *)allStudents {
    return [self.students copy];
}

-(void)add:(Student *)student {
    if(![self.students containsObject:student]) {
        [self.students addObject:student];
        [self save];
    }
}

-(void)remove:(Student *)student {
    if([self.students containsObject:student]) {
        [self.students removeObject:student];
        [self save];
    }
}

-(void)save {
    // save array of students to the archiveURL location (.path makes it a string)
    BOOL success = [NSKeyedArchiver archiveRootObject:self.students toFile: self.archiveURL.path];
    
    NSLog(@"Save result: %i", success);
}


-(NSURL *)archiveURL {
    NSURL *documentsDirectory = [[[NSFileManager defaultManager]URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    // create our location for saving our student store in documents/archive
    return [documentsDirectory URLByAppendingPathComponent:@"archive"];
}

@end










