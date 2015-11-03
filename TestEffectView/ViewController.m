//
//  ViewController.m
//  TestEffectView
//
//  Created by liuyuning on 15/7/24.
//  Copyright (c) 2015年 liuyuning. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,retain)IBOutlet UIImageView *imageView;
@property (nonatomic)CGPoint point;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor greenColor];
    
    //All UIVisualEffectView in Main.storyboard
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesMoved:touches withEvent:event];
    
    UITouch *touch = [touches anyObject];
    
    CGPoint point = [touch locationInView:self.view];
    CGPoint point_pre = [touch previousLocationInView:self.view];
    
    CGRect frame = self.imageView.frame;
    frame.origin.x += (point.x - point_pre.x);
    frame.origin.y += (point.y - point_pre.y);
    
    self.imageView.frame = frame;
}


@end
