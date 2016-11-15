//
//  ViewControllerDataSource.h
//  Objective-C_Demo
//
//  Created by Erica Winberry on 11/14/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import <Foundation/Foundation.h>

//creating a protocol, note: no corresponding .m file, because not implementing anything here!
@protocol ViewControllerDataSource <NSObject>

// list all required methods on the protocol
@required

-(void)numberOfCellsForTableView;

// list all optional methods on the protocol
@optional
-(NSString *)doSomeStuffWithOptionalMethod;

@end
