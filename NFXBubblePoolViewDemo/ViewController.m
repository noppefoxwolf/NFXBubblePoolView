//
//  ViewController.m
//  NFXBubblePoolViewDemo
//
//  Created by Tomoya_Hirano on 5/7/15.
//  Copyright (c) 2015 Tomoya_Hirano. All rights reserved.
//

#import "ViewController.h"
#import "NFXBubbleModel.h"
#import "NFXBubblePoolView.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     タップを検知します。
     検知したらtap関数を呼びます
     */
    UITapGestureRecognizer*t=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    [self.view addGestureRecognizer:t];
}

/**
 *  タップ関数です。モデルを生成し、NFXBubblePoolViewのaddModel関数を呼びます
 */
- (void)tap{
    NFXBubbleModel*model = [self randNode];
    [(NFXBubblePoolView*)self.view addModel:model];
}


/**
 *  ランダムなモデルを生成します。
 */
- (NFXBubbleModel*)randNode{
    NFXBubbleModel*model = [NFXBubbleModel new];
    model.title = [NSString stringWithFormat:@"demo data"];
    model.data  = rand()%100;
    model.color = [self randColor];
    return model;
}

/**
 *  ランダムな色を生成します
 */
- (UIColor*)randColor{
    CGFloat r = (arc4random_uniform(255) + 1)/255.0;
    CGFloat g = (arc4random_uniform(255) + 1)/255.0;
    CGFloat b = (arc4random_uniform(255) + 1)/255.0;
    UIColor *color = [UIColor colorWithRed:r green:g blue:b alpha:1.0];
    return color;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
