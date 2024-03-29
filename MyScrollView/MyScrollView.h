//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Cameron Mcleod on 2019-06-10.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyScrollView : UIView 

@property (nonatomic) CGSize contentSize;

-(void)scrollView: (UIPanGestureRecognizer *)panGesture;

@end

NS_ASSUME_NONNULL_END
