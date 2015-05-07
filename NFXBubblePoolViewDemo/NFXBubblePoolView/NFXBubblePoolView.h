//
//  NFXBubblePoolView.h
//  NFXBubblePoolViewDemo
//
//  Created by Tomoya_Hirano on 5/8/15.
//  Copyright (c) 2015 Tomoya_Hirano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import "NFXBubbleNode.h"

@interface NFXBubblePoolView : SKView
- (void)addModel:(NFXBubbleModel*)model;//モデルを追加します。そのままSceneに流します
@end
