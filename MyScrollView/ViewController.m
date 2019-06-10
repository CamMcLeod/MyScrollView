//
//  ViewController.m
//  MyScrollView
//
//  Created by Cameron Mcleod on 2019-06-10.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

- (CGRect)makeRandomRect;

@end

@implementation ViewController{
    
    MyScrollView *mainView;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    mainView = [[MyScrollView alloc] initWithFrame: self.view.bounds];
    [mainView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:mainView];
    
    UIView *redView = [[UIView alloc] initWithFrame: [self makeRandomRect]];
    [redView setBackgroundColor:[UIColor redColor]];
    [mainView addSubview:redView];
    
    UIView *greenView = [[UIView alloc] initWithFrame: [self makeRandomRect]];
    [greenView setBackgroundColor:[UIColor greenColor]];
    [mainView addSubview:greenView];
    
    UIView *blueView = [[UIView alloc] initWithFrame: [self makeRandomRect]];
    [blueView setBackgroundColor:[UIColor blueColor]];
    [mainView addSubview:blueView];
    
    UIView *yellowView = [[UIView alloc] initWithFrame: [self makeRandomRect]];
    [yellowView setBackgroundColor:[UIColor yellowColor]];
    [mainView addSubview:yellowView];
    
    UIPanGestureRecognizer *panGestureRecognizer;
    
    panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanView:)];

    // Configure the gesture recognizer and attach it to the view.
    
    mainView.contentSize = CGSizeZero;
    CGFloat minX = redView.frame.origin.x;
    CGFloat minY = redView.frame.origin.y;
    CGFloat maxX = redView.frame.origin.x + redView.frame.size.width;
    CGFloat maxY = redView.frame.origin.y + redView.frame.size.height;
    
    for(UIView *view in mainView.subviews){
        
        minX = view.frame.origin.x < minX ? view.frame.origin.x : minX;
        maxX = (view.frame.origin.x + view.frame.size.width) > maxX ? (view.frame.origin.x + view.frame.size.width) : maxX;
        minY = view.frame.origin.y < minY ? view.frame.origin.y : minY;
        maxY = (view.frame.origin.y + view.frame.size.height) > maxX ? (view.frame.origin.y + view.frame.size.height) : maxY;
        
    }
    
    mainView.contentSize = CGSizeMake(maxX-minX+40, maxY-minY+40);
    mainView.bounds = CGRectOffset(mainView.bounds, minX-20, minY-20);
    
    NSLog(@"Red:%@", NSStringFromCGRect(redView.frame));
    NSLog(@"Blue:%@", NSStringFromCGRect(blueView.frame));
    NSLog(@"Green:%@", NSStringFromCGRect(greenView.frame));
    NSLog(@"Yellow:%@", NSStringFromCGRect(yellowView.frame));
    NSLog(@"Main:%@", NSStringFromCGRect(mainView.frame));
    
    [mainView addGestureRecognizer:panGestureRecognizer];

}

- (void) viewDidAppear:(BOOL)animated {
    
//    self.view.bounds = CGRectOffset(self.view.bounds, 0, 100);
    
}

- (void)handlePanView: (UIPanGestureRecognizer *) sender  {
    
    [mainView scrollView:sender];
}

- (CGRect)makeRandomRect {
    
    CGFloat randX = (float)arc4random_uniform(1000)-500.0;
    CGFloat randY = (float)arc4random_uniform(1000)-500.0;
    CGFloat randHeight = (float)arc4random_uniform(200) + 100.0;
    CGFloat randWidth = (float)arc4random_uniform(200) + 100.0;
    
    return CGRectMake(randX, randY, randWidth, randHeight);
    
}

@end
