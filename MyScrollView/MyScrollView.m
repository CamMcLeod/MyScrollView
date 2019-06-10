//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Cameron Mcleod on 2019-06-10.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

-(void)scrollView: (UIPanGestureRecognizer *)panGesture {
    
//    self.contentSize = CGSizeZero;
//    CGFloat minX = 0;
//    CGFloat minY = 0;
//    CGFloat maxX = 0;
//    CGFloat maxY = 0;
//    
//    for(UIView *view in self.subviews){
//        
//        minX = CGRectGetMinX(view.frame) < minX ? CGRectGetMinX(view.frame) : minX;
//        maxX = CGRectGetMaxX(view.frame) > maxX ? CGRectGetMaxX(view.frame) : maxX;
//        minY = CGRectGetMinY(view.frame) > minY ? CGRectGetMinY(view.frame) : minY;
//        maxY = CGRectGetMaxY(view.frame) > maxX ? CGRectGetMaxY(view.frame) : maxY;
//
//    }
//
//    self.contentSize = CGSizeMake(maxX-minX, maxY-minY);
    
    CGPoint panTranslation = [panGesture translationInView: self];

    if (panTranslation.y > 0) {
        if (self.frame.origin.y+panTranslation.y > 0) {
            panTranslation.y = 0;
        }
    } else {
        if (self.frame.size.height - self.frame.origin.y - panTranslation.y > self.contentSize.height) {
            panTranslation.y = 0;
        }
    }
    NSLog(@"%@",NSStringFromCGPoint(panTranslation));
    if (panTranslation.x > 0) {
        if (self.frame.origin.x+panTranslation.x > 0) {
            panTranslation.x = 0;
        }
    } else {
        if (self.frame.size.width - self.frame.origin.x - panTranslation.x > self.contentSize.width) {
            panTranslation.x = 0;
        }
    }
    self.frame = CGRectOffset(self.frame,panTranslation.x, panTranslation.y);
}

@end
