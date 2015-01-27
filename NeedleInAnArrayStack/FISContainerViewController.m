//
//  FISSearchContainerViewController.m
//  NeedleInAnArrayStack
//
//  Created by Chris Gonzales on 1/26/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISContainerViewController.h"

#import "FISUnorderedViewController.h"

@interface FISContainerViewController () <UINavigationBarDelegate>

@property (weak, nonatomic) UISegmentedControl *segmentedControl;
@property (weak, nonatomic) UIView *containerView;

@end

@implementation FISContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.view.backgroundColor = [UIColor whiteColor];
  
  UINavigationBar *bar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 80)];
  UIView *containerView = [[UIView alloc] init];
  self.containerView = containerView;
  self.containerView.translatesAutoresizingMaskIntoConstraints = NO;
  [self.view addSubview:containerView];;
  [self.view addSubview:bar];
  
  self.view.translatesAutoresizingMaskIntoConstraints = NO;
  bar.translatesAutoresizingMaskIntoConstraints = NO;
  
  NSDictionary *views = NSDictionaryOfVariableBindings(bar, containerView);
  NSLayoutConstraint *vConstraint = [NSLayoutConstraint constraintWithItem:bar attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
  NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:bar attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:66.0];
  NSArray *hConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[bar]|" options:0 metrics:nil views:views];
  [self.view addConstraints:[@[vConstraint, heightConstraint] arrayByAddingObjectsFromArray:hConstraint]];
  
  UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"Unordered", @"Ordered", @"Binary"]];
  self.segmentedControl = segmentedControl;
  self.segmentedControl.selectedSegmentIndex = 0;
  self.navigationItem.titleView = self.segmentedControl;
  [bar pushNavigationItem:self.navigationItem animated:YES];
  
  [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[containerView]|" options:0 metrics:nil views:views]];
  [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[bar][containerView]|" options:0 metrics:nil views:views]];
  
  [self.segmentedControl addTarget:self action:@selector(setChildController:) forControlEvents:UIControlEventValueChanged];
  
  [self setChildController:nil];
}

- (void)setChildController:(UISegmentedControl *)sender {
  
  if (!sender || sender.selectedSegmentIndex == 0) {
    FISUnorderedViewController *unordVC = [[FISUnorderedViewController alloc] init];
//    UIView *unorderedView = [[UIView alloc] init];
//    unorderedView.backgroundColor = [UIColor redColor];
    [self addChildViewController:unordVC];
    [self.containerView addSubview:unordVC.view];
    [self applyFullConstraintsForView:unordVC.view inSuperview:self.containerView];
    
    
    
 
  } else if (sender.selectedSegmentIndex == 1) {
    UIView *orderedView = [[UIView alloc] init];
    orderedView.backgroundColor = [UIColor blueColor];
    [self.containerView addSubview:orderedView];
    [self applyFullConstraintsForView:orderedView inSuperview:self.containerView];
  }
}

- (void)applyFullConstraintsForView:(UIView *)view inSuperview:(UIView *)superView {
  view.translatesAutoresizingMaskIntoConstraints = NO;
  superView.translatesAutoresizingMaskIntoConstraints = NO;
  NSDictionary *views = NSDictionaryOfVariableBindings(view, superView);
  
  [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:nil views:views]];
  [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:nil views:views]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
