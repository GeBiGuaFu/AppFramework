//
//  BaseView.m
//  AppFramework
//
//  Created by Cheng on 2017/4/13.
//  Copyright © 2017年 Cheng. All rights reserved.
//

#import "BaseView.h"
#import "BaseViewProtocol.h"
#import "AppDelegate.h"

@interface BaseView()<BaseViewProtocol>

@end

@implementation BaseView

- (instancetype)init{
    self = [super init];
    if (self) {
        [self setupViews];
        [self bindViewModel];
    }
    return self;
}

- (instancetype)initWithViewModel:(id<BaseViewModelProtocol>)viewModel{
    self = [super init];
    if (self) {
        [self setupViews];
        [self bindViewModel];
    }
    return self;
}


//添加子View到主View
- (void)setupViews{
    
}

//绑定V与VM
- (void)bindViewModel{
    
}

//设置点击空白键盘回收
- (void)addReturnKeyBoard{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    tap.numberOfTapsRequired = 1;
    tap.numberOfTouchesRequired = 1;
    [[tap rac_gestureSignal] subscribeNext:^(__kindof UIGestureRecognizer * _Nullable x) {
        AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
        
        [appDelegate.window endEditing:YES];
    }];
    [self addGestureRecognizer:tap];
}

@end
