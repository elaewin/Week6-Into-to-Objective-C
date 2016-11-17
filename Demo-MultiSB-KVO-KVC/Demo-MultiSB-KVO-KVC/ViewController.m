//
//  ViewController.m
//  Demo-MultiSB-KVO-KVC
//
//  Created by Erica Winberry on 11/17/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "ViewController.h"
#import "Counter.h"

@interface ViewController ()

@property(strong, nonatomic) Counter *counter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.counter = [[Counter alloc]init];
    
    // have to do forKeyPath instead of forKey, because trying to access the 'count' value of counter, not the counter itself.
    [self setValue:@100 forKeyPath:@"counter.count"];
    
    NSLog(@"counter.count value: %ld", (long)self.counter.count);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
