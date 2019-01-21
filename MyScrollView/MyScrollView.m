//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Jenny Chang on 21/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

// aDecoder - initialised using storyboard

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        UIPanGestureRecognizer *panMe = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureTime:)];
        
        self.contentSize = CGSizeMake(400, 800);

        [self addGestureRecognizer:panMe];
        
    }
    return self;
}

- (IBAction)panGestureTime:(UIPanGestureRecognizer *)sender {
    
    NSLog(@"panning");
    // sender is my pan gesture
    CGPoint myPoint = [sender translationInView:self];
    
    CGRect scrollBounds = self.bounds;
    scrollBounds.origin = CGPointMake(-myPoint.x, myPoint.y);
    
    if (scrollBounds.size.width < self.contentSize.width && scrollBounds.size.height < self.contentSize.height) {
        
            self.bounds = scrollBounds;
        
    }

    
    

}

@end
