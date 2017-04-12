//
//  BaseViewController.m
//  AppFramework
//
//  Created by Cheng on 2017/4/13.
//  Copyright © 2017年 Cheng. All rights reserved.
//

#import "BaseViewController.h"
#import "BaseViewControllerProtocol.h"


@interface BaseViewController ()<BaseViewControllerProtocol>

@end

@implementation BaseViewController

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    BaseViewController *viewController = [super allocWithZone:zone];
    
    @weakify(viewController)
    [[viewController rac_signalForSelector:@selector(viewDidLoad)] subscribeNext:^(RACTuple * _Nullable x) {
        @strongify(viewController)
        
        [viewController addSubViews];
        [viewController bindViewModel];
        
    }];
    
    return viewController;
}

- (instancetype)initWithViewModel:(id<BaseViewProtocol>)ViewModel{
    self = [super init];
    if (self) {
        
    }
    return self;
}

//添加View到ViewController
- (void)addSubViews{
    
}

//用来绑定V(VC)与VM
- (void)bindViewModel{
    
}

//设置导航栏、分栏
- (void)layoutNavigation{
    
}


//初次获取数据的时候调用（不是特别必要）
- (void)getNewData{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
