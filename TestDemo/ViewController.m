//
//  ViewController.m
//  TestDemo
//
//  Created by Star on 2018/7/13.
//  Copyright © 2018年 star. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+SKButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
#if __IPHONE_11_0
    
    NSLog(@"11");
    
#endif
    
    NSLog(@"%d", [UIScreen instancesRespondToSelector:@selector(currentMode)]);


    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.bounds = CGRectMake(0, 0, 100, 50);
    button.center = self.view.center;
    [button setTitle:@"button_test" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(zjxButtonPress:) forControlEvents:UIControlEventTouchUpInside];
    [button setNeedsCameraPermission];

    [self.view addSubview:button];

}

- (IBAction)zjxButtonPress:(id)sender {
    NSLog(@"sell的代码");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
