//
//  User.m
//  Day27Demo-MRC
//
//  Created by Erica Winberry on 11/15/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "User.h"

@implementation User

// Setters
-(void)setName: (NSString *)name {
    if(_name != name) {
        [name retain];
        [_name release];
        
        _name = name;
    }
}

-(void)setEmail: (NSString *)email {
    if (_email != email) {
        [email retain];
        [_email release];
            
        _email = email;
    }
}

// Getters
-(NSString *)name {
    return _name;
}

-(NSString *)email {
    return _email;
}

-(NSString *)description {
    
    NSString *description = [[NSString alloc]initWithFormat:@"Name: %@ - Email: %@", self.name, self.email];
    
    // This will decrement the count by one, but not immediately (probably when the scope ends), so the return will happen correctly.
    [description autorelease];
    
    return description;
}

-(void)dealloc {
    
    [_name release];
    [_email release];
    
    // Need to do this to redirect the pointers (so there are no dangling pointers left, which could cause a crash if referenced elsewhere) from the dealloc'd place in memory.
    _name = nil;
    _email = nil;
    
    // Checking to make sure that our retain count is at 1.
    NSLog(@"Retain Count: %li", [self retainCount]);
    
    // have to put this LAST, so that our instance is not killed before we can dealloc our members.
    [super dealloc];
}

@end









