



//
//  ZJXView.m
//  TestDemo
//
//  Created by Star on 2018/8/6.
//  Copyright © 2018年 star. All rights reserved.
//

#import "ZJXView.h"

@implementation ZJXView

- (void)goMethod {
    NSLog(@"%s", __func__);
    for (int i = 0; i<10; i++) {
        NSLog(@"这里是live代码");
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
