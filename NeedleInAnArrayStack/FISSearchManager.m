//
//  FISSearchManager.m
//  NeedleInAnArrayStack
//
//  Created by Chris Gonzales on 2/6/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISSearchManager.h"

@implementation FISSearchManager

+ (NSUInteger)linearOrderedSearchForItem:(id)item inArray:(NSArray *)array
{
    if ([item isKindOfClass:[NSNumber class]]) {
        for (NSUInteger i = 0; i < array.count; i++) {
            if ([item integerValue] == [array[i] integerValue]) {
                return i;
            }
            if ([array[i] integerValue] > [item integerValue]) {
                break;
            }
        }
    } else {
        NSLog(@"Array must be an ordered list of NSNumber");
    }
    
    return NSNotFound;
}

+ (NSUInteger)linearUnorderedSearchForItem:(id)item inArray:(NSArray *)array
{
    if ([item isKindOfClass:[NSNumber class]]) {
        for (NSUInteger i = 0; i < array.count; i++) {
            if ([item integerValue] == [array[i] integerValue]) {
                return i;
            }
        }
    } else {
        NSLog(@"Array must be an unordered list of NSNumber");
    }
    
    return NSNotFound;
}

+ (NSUInteger)binarySearchForItem:(id)item inArray:(NSArray *)array
{
    NSUInteger mid = 0;
    NSUInteger min = 0;
    NSUInteger max = array.count - 1;
    
    if ([item isKindOfClass:[NSNumber class]]) {
        while (min < max) {
            
            mid = (min + max) / 2;
            
            if ([item integerValue] == [array[mid] integerValue]) {
                return mid;
            } else if ([item integerValue] > [array[mid] integerValue]) {
                min = mid + 1;
            } else {
                max = mid - 1;
            }
        }
    } else {
        NSLog(@"Array must be an ordered list of NSNumber");
    }
    
    return NSNotFound;
}

@end
