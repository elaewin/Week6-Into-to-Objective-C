//
//  NSString+ArrayOfWords.m
//  Week6Labs
//
//  Created by Erica Winberry on 11/14/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//


// HOMEWORK:
// Create a category method on NSString that takes in itself and returns an array of words

#import "NSString+ArrayOfWords.h"

@implementation NSString (ArrayOfWords)

-(NSArray *)wordsInAString{
    return [self componentsSeparatedByString:@" "];
}


@end
