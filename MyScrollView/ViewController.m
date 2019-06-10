//
//  ViewController.m
//  MyScrollView
//
//  Created by Cameron Mcleod on 2019-06-10.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    UIView *mainView = [[UIView alloc] initWithFrame: self.view.bounds];
    [mainView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:mainView];
    
    UIView *redView = [[UIView alloc] initWithFrame: CGRectMake(20, 20, 100, 100)];
    [redView setBackgroundColor:[UIColor redColor]];
    [mainView addSubview:redView];
    
    UIView *greenView = [[UIView alloc] initWithFrame: CGRectMake(150, 150, 150, 200)];
    [greenView setBackgroundColor:[UIColor greenColor]];
    [mainView addSubview:greenView];
    
    UIView *blueView = [[UIView alloc] initWithFrame: CGRectMake(40, 400, 150, 200)];
    [blueView setBackgroundColor:[UIColor blueColor]];
    [mainView addSubview:blueView];
    
    UIView *yellowView = [[UIView alloc] initWithFrame: CGRectMake(100, 600, 180, 150)];
    [yellowView setBackgroundColor:[UIColor yellowColor]];
    [mainView addSubview:yellowView];

    
}

- (void) viewDidAppear:(BOOL)animated {
    
    self.view.bounds = CGRectOffset(self.view.bounds, 0, 100);
    
}


@end
