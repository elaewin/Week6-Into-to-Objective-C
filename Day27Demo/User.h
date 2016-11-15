//
//  User.h
//  Day27Demo-MRC
//
//  Created by Erica Winberry on 11/15/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

{
    NSString *_name;
    NSString *_email;
}

// Accessor Methods
-(void)setName: (NSString *)name;
-(void)setEmail: (NSString *)email;
-(NSString *)name;
-(NSString *)email;

// Other methods
-(NSString *)description;

@end
