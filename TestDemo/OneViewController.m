




//
//  OneViewController.m
//  TestDemo
//
//  Created by Star on 2018/8/6.
//  Copyright © 2018年 star. All rights reserved.
//

#import "OneViewController.h"
#import "ZJXModel.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    NSLog(@"live分支");
    NSLog(@"sell分支哦");
    [self sellMethod];
}

- (void)liveMethod {
    NSLog(@"%s", __func__);
}

- (void)sellMethod {
    NSLog(@"%s", __func__);
    ZJXModel *zjxModel = [ZJXModel new];
    zjxModel.age = 28;
    zjxModel.name = @"star";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
