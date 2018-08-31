//
//  ViewController.m
//  TestDemo
//
//  Created by Star on 2018/7/13.
//  Copyright © 2018年 star. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+SKButton.h"
#import "OneViewController.h"
#import <sys/sysctl.h>

@interface ViewController ()
{
    NSInteger _state;
}

@property (weak, nonatomic) IBOutlet UIView *showView;

@end

@implementation ViewController

- (IBAction)buttonPress:(id)sender {

    CGRect frame = self.showView.frame;

    if (_state%2)
    {
        frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, 200.f);
    }
    else
    {
        frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, 400.f);
    }

    [UIView animateWithDuration:0.3 animations:^{
        self.showView.frame = frame;
    }];

    _state++;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//#if __IPHONE_11_0
//
//    NSLog(@"11");
//
//#endif
//
//    NSLog(@"%d", [UIScreen instancesRespondToSelector:@selector(currentMode)]);
//
//
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
//    button.bounds = CGRectMake(0, 0, 100, 50);
//    button.center = self.view.center;
//    [button setTitle:@"button_test" forState:UIControlStateNormal];
//    [button addTarget:self action:@selector(zjxButtonPress:) forControlEvents:UIControlEventTouchUpInside];
//    [button setNeedsCameraPermission];
//
//    [self.view addSubview:button];

    size_t size;
    sysctlbyname("kern.boottime", NULL, &size, NULL, 0);

    char *boot_time = malloc(size);
    sysctlbyname("kern.boottime", boot_time, &size, NULL, 0);

    uint32_t timestamp = 0;
    memcpy(&timestamp, boot_time, sizeof(uint32_t));
    free(boot_time);

    NSDate* bootTime = [NSDate dateWithTimeIntervalSince1970:timestamp];

    NSLog(@"bootTime = %@", bootTime);

}

- (IBAction)zjxButtonPress:(id)sender {
    NSLog(@"master的代码");
    NSLog(@"live的代码");
    OneViewController *oVC = [OneViewController new];
    [self presentViewController:oVC animated:YES completion:nil];
    NSLog(@"sell的代码");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
