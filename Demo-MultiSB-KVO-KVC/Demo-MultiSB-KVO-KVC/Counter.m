//
//  Counter.m
//  Demo-MultiSB-KVO-KVC
//
//  Created by Erica Winberry on 11/17/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "Counter.h"

@implementation Counter

-(void)incrementCounter {
    
//    // this if statement is for manual reporting of KVO.
//    if (self.count % 3 == 0) {
//        [self willChangeValueForKey:@"count"];
//        self.count++;
//        [self didChangeValueForKey:@"count"];
//    } else {
//        self.count++;
//    }
    self.count++;
}



@end
