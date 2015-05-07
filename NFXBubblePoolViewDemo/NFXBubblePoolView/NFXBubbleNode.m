//
//  NFXBubbleNode.m
//  NFXBubblePoolViewDemo
//
//  Created by Tomoya_Hirano on 5/8/15.
//  Copyright (c) 2015 Tomoya_Hirano. All rights reserved.
//

#import "NFXBubbleNode.h"

@interface NFXBubbleNode (){
    NFXBubbleModel*_model;
    SKLabelNode *label1;
    SKLabelNode *label2;
}
@end

@implementation NFXBubbleNode

- (instancetype)init{
    self = [super init];
    if (self) {
        label1 = [SKLabelNode labelNodeWithFontNamed:@"Courier"];
        label1.fontSize = 16;
        [self addChild:label1];
        label2 = [SKLabelNode labelNodeWithFontNamed:@"Courier"];
        label2.fontSize = 14;
        [self addChild:label2];
    }
    return self;
}

- (void)setSize:(CGFloat)size{
    self.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:size/2];
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddArc(path, NULL, 0, 0, size/2, 0, M_PI * 2, YES);
    self.path = path;
    self.fillColor = self.model.color;
    self.strokeColor = [SKColor clearColor];

    label2.hidden = size<80;
}

- (void)setModel:(NFXBubbleModel *)model{
    _model = model;
    label1.text = [NSString stringWithFormat:@"%d",model.data];
    label2.text = [NSString stringWithFormat:@"%@",model.title];
    CGPoint point = label1.position;
    point.y -= 20;
    label2.position = point;
}

- (NFXBubbleModel*)model{
    return _model;
}
@end
