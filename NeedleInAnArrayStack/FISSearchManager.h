//
//  FISSearchManager.h
//  NeedleInAnArrayStack
//
//  Created by Chris Gonzales on 2/6/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISSearchManager : NSObject

+ (NSUInteger)linearOrderedSearchForItem:(id)item inArray:(NSArray *)array;
+ (NSUInteger)linearUnorderedSearchForItem:(id)item inArray:(NSArray *)array;
+ (NSUInteger)binarySearchForItem:(id)item inArray:(NSArray *)array;

@end
