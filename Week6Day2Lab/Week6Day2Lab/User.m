//
//  User.m
//  Week6Day2Lab
//
//  Created by Erica Winberry on 11/15/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

//  Create a User class, but implement the NSCopying protocol, and implement CopyWithZone: to make deep copies of User.
//      User should have values for name, age, and email.
//      User should have an initializer that takes in values for each of
//      the above and returns a new instance.(Hint: Yesterday's slides).

#import "User.h"

@implementation User

-(instancetype) init {
    self = [super init];
    
    if(self) {
        self.name = nil;
        self.email = nil;
        self.age = 0;
    }
    return self;
}

-(instancetype) initWithName: (NSString *)userName {
    if([self init]) {
        self.name = userName;
    }
    return [self init];
}

-(instancetype) initWithEmail: (NSString *)userEmail {
    if([self init]) {
        self.email = userEmail;
    }
    return [self init];
}

-(instancetype) initWithAge: (NSInteger)userAge {
    if([self init]) {
        self.age = userAge;
    }
    return [self init];
}

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

-(void)setAge: (NSInteger *)age {
    if (_age != age) {
        [age retain];
        [_age release];
        
        _age = age;
    }
}

// Getters

-(NSString *)name {
    return _name;
}

-(NSString *)email {
    return _email;
}

-(NSInteger *)age {
    return _age;
}


// Other Methods
-(NSString *)description {
    
    NSString *description = [[NSString alloc]initWithFormat:@"Name: %@ | Age: %@ | Email: %@", self.name, self.age, self.email];
    
    [description autorelease];
    
    return description;
}

-(void)dealloc {
    
    [_name release];
    [_age release];
    [_email release];
    
    _name = nil;
    _age = nil;
    _email = nil;
    
    NSLog(@"Retain Count: %li", [self retainCount]);
    
    [super dealloc];
}

@end
