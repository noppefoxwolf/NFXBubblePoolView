//
//  NFXBubbleNode.h
//  NFXBubblePoolViewDemo
//
//  Created by Tomoya_Hirano on 5/8/15.
//  Copyright (c) 2015 Tomoya_Hirano. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "NFXBubbleModel.h"

@interface NFXBubbleNode : SKShapeNode
@property NFXBubbleModel*model;
- (void)setSize:(CGFloat)size;
@end
