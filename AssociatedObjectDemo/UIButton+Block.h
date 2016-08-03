//
//  UIButton+Block.h
//  AssociatedObjectDemo
//
//  Created by zhangchaojie on 16/8/3.
//  Copyright © 2016年 zhangchaojie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Block)

typedef void (^ButtonBlock)();
- (void)actionWithBlock:(ButtonBlock)block;

@end
