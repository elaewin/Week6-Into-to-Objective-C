//
//  User.h
//  Week6Day2Lab
//
//  Created by Erica Winberry on 11/15/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

{
    NSString *_name;
    NSString *_email;
    NSInteger *_age;
}

// Accessor Methods
-(void)setName: (NSString *)name;
-(void)setEmail: (NSString *)email;
-(void)setAge: (NSInteger *)age;
-(NSString *)name;
-(NSString *)email;
-(NSInteger *)age;

// Other Methods
-(NSString *)description;


@end
