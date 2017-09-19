//
//  ViewController.m
//  UIScrollViewPlaceholderView
//
//  Created by 蔡强 on 2017/9/17.
//  Copyright © 2017年 kuaijiankang. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import <ReactiveCocoa.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(90, 90, 200, 30)];
    [self.view addSubview:button];
    [button setTitle:@"去下一页" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [[button rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        SecondViewController *secondVC = [[SecondViewController alloc] init];
        [self.navigationController pushViewController:secondVC animated:YES];
    }];
}

@end
