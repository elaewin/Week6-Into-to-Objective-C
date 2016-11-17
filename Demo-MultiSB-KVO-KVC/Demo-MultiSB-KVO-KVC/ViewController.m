//
//  ViewController.m
//  Demo-MultiSB-KVO-KVC
//
//  Created by Erica Winberry on 11/17/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "ViewController.h"
#import "Counter.h"

static void *kvoContext = &kvoContext;

@interface ViewController ()

@property(strong, nonatomic) Counter *counter;

@end

@implementation ViewController

- (IBAction)incrementCounter:(id)sender {
    [self.counter incrementCounter];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.counter = [[Counter alloc]init];
    
    self.counter.count = 100;

// KVO
//    // have to do forKeyPath instead of forKey, because trying to access the 'count' value of counter, not the counter itself.
//    [self setValue:@100 forKeyPath:@"counter.count"];
//    
//    NSLog(@"counter.count value: %ld", (long)self.counter.count);
    
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // pipe in options indicates that we can pass in multiple options together
    [self addObserver:self forKeyPath:@"self.counter.count" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:&kvoContext];
    
    
    
}


-(void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    // Have to remove the observer created above
    [self removeObserver:self forKeyPath:@"self.counter.count"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    if(context == kvoContext) {
        
        NSLog(@"Counter: %ld", self.counter.count);
        
        if(self.counter.count == 110) {
            NSLog(@"110!!!");
        }
    } else {
        // have to add this because the super may be listening, too.
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

//+(BOOL)automaticallyNotifiesObserversOfCounter{
//    // this will prevent the above observeValueForKeyPath method from firing off automatically - will need to manually notify observer in the counter method
//    return NO;
//}

@end
