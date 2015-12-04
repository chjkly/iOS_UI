//
//  ViewController.m
//  FirstGit
//
//  Created by 杨卫兵 on 15/12/4.
//  Copyright (c) 2015年 杨卫兵. All rights reserved.
//

#import "ViewController.h"
////引用Masonry库
////1.将Masonry.xcodeproj添加到项目中
////2.在项目配置中：Targets-->General-->Linked Frameworks and Libraries中添加Masonry.iOS库
////3.在项目配置中：Targets-->Building Settings-->Search Paths-->User Header Search Paths中添加Masonry项目的主文件夹
////4.添加头文件
//#import "Masonry.h"
//
////5.为避免Block的循环引用，定义以下宏简化对当前控制器的引用
//#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    // 防止block中的循环引用
//    WS(ws);
//    // 初始化view并设置背景
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    view.translatesAutoresizingMaskIntoConstraints=NO;
    NSLayoutConstraint* consWidth=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:0.3 constant:0];
    NSLayoutConstraint* consHeight=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.1 constant:0];
    NSLayoutConstraint* consX=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    NSLayoutConstraint* consY=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    NSArray* consArr=@[consWidth,consX,consY,consHeight];
    [self.view addConstraints:consArr];
    
    
//    // 使用mas_makeConstraints添加约束
//    [view mas_makeConstraints:^(MASConstraintMaker *make) {
//        // 添加大小约束（make就是要添加约束的控件view）
//        make.size.mas_equalTo(CGSizeMake(100, 100));
//        // 添加居中约束（居中方式与self相同）
//        make.center.equalTo(ws.view); }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
