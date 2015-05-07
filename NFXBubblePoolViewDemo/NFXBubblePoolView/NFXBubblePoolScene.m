//
//  NFXBubblePoolScene.m
//  NFXBubblePoolViewDemo
//
//  Created by Tomoya_Hirano on 5/8/15.
//  Copyright (c) 2015 Tomoya_Hirano. All rights reserved.
//

#import "NFXBubblePoolScene.h"
#import "NFXBubbleNode.h"

@interface NFXBubblePoolScene (){
    NSMutableArray*_items;
}

@end

@implementation NFXBubblePoolScene

-(instancetype)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        _items = [NSMutableArray array];
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        
        NFXBubbleNode*node = [NFXBubbleNode node];
        [self addChild:node];
    }
    return self;
}

/**
 *  モデルを受け取り、それを元にノードを生成します。
 *  画面に表示し、ついでにitems配列に追加します。
 *  fixItemsBoundsを呼びます
 */
- (void)addModel:(NFXBubbleModel *)model{
    NFXBubbleNode*node = [NFXBubbleNode node];
    node.model = model;
    node.position = self.view.center;
    [_items addObject:node];
    [self addChild:node];
    [self fixItemsBounds];
}


/**
 *  offset : 余白の範囲をどれくらい設けるか
 *  allDataSize : 全てのノードが持つモデルのdataの合計値
 */
- (void)fixItemsBounds{
    NSLog(@"fix");
    float offset = 0.5;
    int allDataSize = 0;
    for (NFXBubbleNode*n in _items) {
        allDataSize += n.model.data;
    }
    for (NFXBubbleNode *n in _items) {
        //最大面積とノードが占める割合からノードのサイズを決定します。
        int maxSize = MIN(self.view.bounds.size.width,self.view.bounds.size.height);
        int maxS = pow(maxSize, 2);
        float per = n.model.data/(float)allDataSize;
        int size = sqrtf(per * maxS * offset);
        [n setSize:size];
    }
}

@end
