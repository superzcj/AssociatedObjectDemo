//
//  ViewController.m
//  AssociatedObjectDemo
//
//  Created by zhangchaojie on 16/8/3.
//  Copyright © 2016年 zhangchaojie. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Block.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_btn actionWithBlock:^{
        NSLog(@"Click the button");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
