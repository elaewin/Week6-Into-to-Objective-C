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
@property(strong, nonatomic)NSMutableDictionary *students;

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
        // if there is nothing at this url, the result will be nil (so next if statement kicks in.)
        self.students = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
        
        if(!self.students) {
            self.students = [[NSMutableDictionary alloc]init];
        }
    }
    
    return self;
}

-(NSInteger)count {
    return self.students.count;
}

-(NSArray *)allStudents {
    NSMutableArray *results = [[NSMutableArray alloc]init];
    
    for(Student *student in self.students.allValues) {
        
        [results addObject:[student copy]];
    }
    
    return results;
}

-(void)add:(Student *)student {
    [self.students setObject:student forKey:student.email];
    [self save];
}

//-(void)add:(Student *)student {
//    if ([self.students objectForKey: [student email]]) {
//        [self.students setObject:student forKey:student.email];
//        [self save];
//    } else {
//        NSLog(@"%@ %@ already in array with email %@", [student firstName], [student lastName], [student email]);
//    }
//}

-(void)remove:(Student *)student {
    if (![self.students objectForKey:[student email]]) {
        [self.students removeObjectForKey:student.email];
        [self save];
    } else {
        NSLog(@"%@ %@ not in array with email %@", [student firstName], [student lastName], [student email]);
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
