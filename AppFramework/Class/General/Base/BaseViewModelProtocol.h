//
//  BaseViewModelProtocol.h
//  AppFramework
//
//  Created by Cheng on 2017/4/13.
//  Copyright © 2017年 Cheng. All rights reserved.
//

#import <Foundation/Foundation.h>

//数据处理后需要进行的操作标识
typedef NS_OPTIONS(NSUInteger, XCRefreshDataStatus) {
    XCHeaderRefresh_HasMoreData =       1 << 0,
    XCHeaderRefresh_HasNoMoreData =     1 << 1,
    XCFooterrRefresh_HasMoreData =      1 << 2,
    XCFooterrRefresh_HasNoMoreData =    1 << 3,
    XCRefreshError =                    1 << 4,
    XCRefreshUI =                       1 << 5,
};

@protocol BaseViewModelProtocol <NSObject>

@optional

- (instancetype)initWithModel:(id)model;

@property(strong,nonatomic)id request;

//初始化
- (void)initialize;

@end
