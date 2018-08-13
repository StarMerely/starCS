

//
//  ZJXModel.m
//  TestDemo
//
//  Created by Star on 2018/8/6.
//  Copyright © 2018年 star. All rights reserved.
//

#import "ZJXModel.h"

@implementation ZJXModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%s", __func__);
        for (int i = 0; i<10; i++) {
            NSLog(@"这里是live代码");
        for (int i = 0; i<10; i++) {
            NSLog(@"这里是sell代码");
        }
    }
    return self;
}

@end
