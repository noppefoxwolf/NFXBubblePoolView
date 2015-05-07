# NFXBubblePoolView

## Usage

NFXBubblePoolView use SpriteKit.
So `SpriteKit.framework` add your project.(but, NFXBubblePoolView isn't need your spriteKit skil.)

add `SpriteKit.framework`

On your ViweController,import this.

`\#import <SpriteKit/SpriteKit.h>`
`\#import "NFXBubbleModel.h"`
`\#import "NFXBubblePoolView.h"`

`NFXBubblePoolView` can init for initWithFrame of initWithaDecoder(storyboard).

You just call `addModel:(NFXBubbleModel*)model`,add one Node.

NFXBubbleModel is simple.this need title,color,data.
Data is int value.

![image](https://raw.githubusercontent.com/noppefoxwolf/NFXBubblePoolView/master/sample.png)
