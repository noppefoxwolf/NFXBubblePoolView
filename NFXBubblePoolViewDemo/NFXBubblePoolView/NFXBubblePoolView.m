//
//  NFXBubblePoolView.m
//  NFXBubblePoolViewDemo
//
//  Created by Tomoya_Hirano on 5/8/15.
//  Copyright (c) 2015 Tomoya_Hirano. All rights reserved.
//

#import "NFXBubblePoolView.h"
#import "NFXBubblePoolScene.h"

@interface NFXBubblePoolView (){
    NFXBubblePoolScene*_scene;
}
@end

@implementation NFXBubblePoolView
//コード用
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}
//storyboard用
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup{
    self.showsFPS = false;//FPS表示、デバッグ用
    self.showsNodeCount = false;//ノード数の表示、デバッグ用
    //シーンを生成して貼る
    _scene = [NFXBubblePoolScene sceneWithSize:self.bounds.size];
    _scene.scaleMode = SKSceneScaleModeAspectFill;
    [self presentScene:_scene];
}

/**
 *  シーンにそのままモデルを受け流します
 */
- (void)addModel:(NFXBubbleModel *)model{
    [_scene addModel:model];
}
@end
