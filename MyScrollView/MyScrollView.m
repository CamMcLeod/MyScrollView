//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Cameron Mcleod on 2019-06-10.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView



/*
 youu need to add two things to your custom UIView
 
 A CGSize property called contentSize
 A PanGestureRecognizer

In the method that handles events from the PanGestureRecognizer, look for how far your have panned. Then, move (translate) the view's frame, but do not permit values that would violate contentSize.

Refactor your code so that the boxes are added as subviews to MyScrollView and set the contentSize.

Note: We implemented the basics of UIScrollView but there is a lot more to the real UIScrollView than just this. Momentum scrolling, bouncing, scroll indicators, zooming, and delegate methods are just some of the features we have not implemented here.
*/


@end
