//
//  BaseViewControllerProtocol.h
//  AppFramework
//
//  Created by Cheng on 2017/4/13.
//  Copyright © 2017年 Cheng. All rights reserved.
//


#import <Foundation/Foundation.h>

@protocol BaseViewProtocol;

@protocol BaseViewControllerProtocol <NSObject>


@optional
- (instancetype)initWithViewModel:(id <BaseViewProtocol>)ViewModel;

- (void)bindViewModel;
- (void)addSubViews;
- (void)layoutNavigation;
- (void)getNewData;
- (void)recoverKeyboard;

@end

