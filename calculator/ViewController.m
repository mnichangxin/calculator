//
//  ViewController.m
//  calculator
//
//  Created by Changxin Li on 2019/7/28.
//  Copyright © 2019 Changxin Li. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Hello world";
    [label sizeToFit];
    label.center = self.view.center;
    [self.view addSubview:label];
}


@end
