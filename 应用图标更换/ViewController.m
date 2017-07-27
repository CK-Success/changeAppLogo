//
//  ViewController.m
//  应用图标更换
//
//  Created by NewBest_RD on 2017/7/25.
//  Copyright © 2017年 newbest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    int a=1;
    
}

- (IBAction)one:(id)sender {
    
    [self changeImageNames:@"icon1"];
}

- (IBAction)two:(id)sender {
    
    [self changeImageNames:@"icon2"];
}

- (IBAction)three:(id)sender {
    
    [self changeImageNames:@"icon3"];
}

-(void)changeImageNames:(NSString *)name{

    if ([UIApplication sharedApplication].supportsAlternateIcons) { //来判断是否支持换应用图标
        
        //setAlertnateIconName方法有二个参数
        //第一个参数是 要换图标的名字(此名字不是图片的原始名字)，如果写nil，系统默认是最初图标名字
        //第二个参数是 方法执行的回调
        [[UIApplication sharedApplication] setAlternateIconName:name completionHandler:^(NSError * _Nullable error) {
            if (error) {
               NSLog(@"失败");
            }else{
               NSLog(@"成功");
            }
            
        }];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
