//
//  ViewController.m
//  MyScrollView
//
//  Created by Jenny Chang on 21/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

// create instance of scroll view - 100

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];

    CGRect bounds = self.containerView.bounds;
    bounds.origin = CGPointMake(0, -100);
    self.containerView.bounds = bounds;

}





@end
