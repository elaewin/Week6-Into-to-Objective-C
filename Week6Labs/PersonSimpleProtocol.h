//
//  PersonSimpleProtocol.h
//  Week6Labs
//
//  Created by Erica Winberry on 11/14/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonSimpleProtocol <NSObject>

@required
-(void)hadABirthday;

@optional
-(void)changedTheirName;

@end
