//
//  FISSearchManagerSpec.m
//  NeedleInAnArrayStack
//
//  Created by Chris Gonzales on 2/6/15.
//  Copyright 2015 FIS. All rights reserved.
//

#import "Specta.h"
#import "FISSearchManager.h"
#define EXP_SHORTHAND
#import <Expecta.h>

SpecBegin(FISSearchManager)

describe(@"FISSearchManager", ^{
  __block NSArray *unsortedArray = @[@4, @1, @2, @3, @9, @7, @8, @6, @5];
  __block NSArray *sortedArray = @[@1, @2, @4, @5, @7, @8, @9];
  
  describe(@"performing a linear search for an item on an unsorted array", ^{
    context(@"where the item exists in the array", ^{
      it(@"should return the index of the item in the array",^{
        NSUInteger foundIndex = [FISSearchManager linearUnorderedSearchForItem:@8 inArray:unsortedArray];
        expect(foundIndex).to.equal(6);
      });
    });
    
    context(@"where the item does not exist in the array", ^{
      it(@"should return NSNotFound",^{
        NSUInteger foundIndex = [FISSearchManager linearUnorderedSearchForItem:@10 inArray:unsortedArray];
        expect(foundIndex).to.equal(NSNotFound);
      });
    });
  });
  
  describe(@"performing a linear search on an sorted array", ^{
    context(@"where the item exists in the array", ^{
      it(@"should return the index of the item in the array",^{
        NSUInteger foundIndex = [FISSearchManager linearOrderedSearchForItem:@2 inArray:sortedArray];
        expect(foundIndex).to.equal(1);
      });
    });
    
    context(@"where the item does not exist in the array", ^{
      it(@"should return NSNotFound",^{
        NSUInteger foundIndex = [FISSearchManager linearOrderedSearchForItem:@0 inArray:sortedArray];
        expect(foundIndex).to.equal(NSNotFound);
      });
    });
  });
  
  describe(@"perforiming a binary search on a sorted array", ^{
    context(@"where the item exists in the array", ^{
      it(@"should return the index of the item in the array",^{
        NSUInteger foundIndex = [FISSearchManager binarySearchForItem:@8 inArray:sortedArray];
        expect(foundIndex).to.equal(5);
      });
    });
    
    context(@"where the item does not exist in the array", ^{
      it(@"should return NSNotFound",^{
        NSUInteger foundIndex = [FISSearchManager binarySearchForItem:@12 inArray:sortedArray];
        expect(foundIndex).to.equal(NSNotFound);
      });
    });
    
  });
});

SpecEnd
