//
//  NFXBubbleModel.h
//  NFXBubblePoolViewDemo
//
//  Created by Tomoya_Hirano on 5/7/15.
//  Copyright (c) 2015 Tomoya_Hirano. All rights reserved.
//

/**
 *  モデルです。
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NFXBubbleModel : NSObject
@property NSString*title;//タイトル
@property UIColor *color;//ノードの色
@property int data;//この値と全体を相対的に比較してノードのサイズが決定します。
@end
