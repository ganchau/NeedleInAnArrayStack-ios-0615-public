//
//  FISUnorderedViewController.m
//  NeedleInAnArrayStack
//
//  Created by Chris Gonzales on 1/23/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISUnorderedViewController.h"

@interface FISUnorderedViewController ()

@end

@implementation FISUnorderedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.view.backgroundColor = [UIColor redColor];
  
  UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
  self.view.translatesAutoresizingMaskIntoConstraints = NO;
  button.translatesAutoresizingMaskIntoConstraints = NO;
  
  [button setTitle:@"Fun Button" forState:UIControlStateNormal];
  [button setTitleColor:[UIColor darkGrayColor] forState:UIControlStateHighlighted];
  [self.view addSubview:button];
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
