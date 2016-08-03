//
//  UIButton+Block.m
//  AssociatedObjectDemo
//
//  Created by zhangchaojie on 16/8/3.
//  Copyright © 2016年 zhangchaojie. All rights reserved.
//

#import "UIButton+Block.h"
#import <objc/runtime.h>

static NSString *btnKey = @"ButtonKey";
@implementation UIButton (Block)

- (void)actionWithBlock:(ButtonBlock)block{
    
    if (!block) return;
    
    objc_setAssociatedObject(self, &btnKey, block, OBJC_ASSOCIATION_RETAIN);
    
    [self addTarget:self action:@selector(handBlock) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)handBlock{
    ButtonBlock block = objc_getAssociatedObject(self, &btnKey);
    block();
}

@end
