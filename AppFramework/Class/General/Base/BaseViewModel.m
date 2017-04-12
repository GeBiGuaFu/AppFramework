//
//  BaseViewModel.m
//  AppFramework
//
//  Created by Cheng on 2017/4/13.
//  Copyright © 2017年 Cheng. All rights reserved.
//

#import "BaseViewModel.h"
#import "BaseViewModelProtocol.h"

@interface BaseViewModel ()<BaseViewModelProtocol>

@end

@implementation BaseViewModel

@synthesize request = _request;

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    BaseViewModel *viewModel = [BaseViewModel allocWithZone:zone];
    if (viewModel) {
        [viewModel initialize];
    }
    return viewModel;
}

//用M初始化VM
- (instancetype)initWithModel:(id)model{
    self = [super init];
    if (self) {
        
    }
    return self;
}

//初始化请求体,方便子类发起网络请求
- (id)request{
    if (!_request) {
        
    }
    return _request;
}

//进行一些逻辑绑定，网络数据请求处理
- (void)initialize{
    
}

@end
