---
tags: CS, algorithms, search
languages: objc
---

# NeedleInAnArrayStack
Let's go over 3 types of searches:

- [Linear ordered search](http://en.wikipedia.org/wiki/Linear_search)
- [Linear unordered search](http://en.wikipedia.org/wiki/Linear_search#Linear_search_on_an_ordered_list)
- [Binary search](http://www.getappninja.com/blog/implementing-a-binary-search-in-ios)

## Instructions
Make the tests pass! The project contains a class called `FISSearchManager`
that should have 3 class methods:

```objc
+ (NSUInteger)linearOrderedSearchForItem:(id)item inArray:(NSArray *)array;
+ (NSUInteger)linearUnorderedSearchForItem:(id)item inArray:(NSArray *)array;
+ (NSUInteger)binarySearchForItem:(id)item inArray:(NSArray *)array;
```

*Side note: these are class methods because they don't do anything to the state
of an instance of FISSearchManager. We give the class methods all the arguments
they need to do their work and give us the appropriate output.
