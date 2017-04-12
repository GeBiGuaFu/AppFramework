//
//  BaseViewProtocol.h
//  AppFramework
//
//  Created by Cheng on 2017/4/13.
//  Copyright © 2017年 Cheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BaseViewModelProtocol;

@protocol BaseViewProtocol <NSObject>


@optional

- (instancetype)initWithViewModel:(id <BaseViewModelProtocol>)viewModel;

- (void)bindViewModel;
- (void)setupViews;
- (void)addReturnKeyBoard;


@end
