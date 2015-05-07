# NFXBubblePoolView
![image](https://raw.githubusercontent.com/noppefoxwolf/NFXBubblePoolView/master/sample.png)

## Usage

NFXBubblePoolViewはSpriteKitを使うので`SpriteKit.framework`を追加してください。
ただし、NFXBubblePoolViewはSpriteKitの知識を必要としません。

ViewControllerで以下をインポートします
`\#import <SpriteKit/SpriteKit.h>`
`\#import "NFXBubbleModel.h"`
`\#import "NFXBubblePoolView.h"`

`NFXBubblePoolView` は initWithFrame か initWithaDecoder(storyboard)で初期化します。
`addModel:(NFXBubbleModel*)model`を呼ぶことでノードを追加します。

`NFXBubbleModel`はタイトルと色とデータのシンプルなモデルです。
データはint数値型です。

NFXBubblePoolView use SpriteKit.
So `SpriteKit.framework` add your project.(but, NFXBubblePoolView isn't need your spriteKit skill.)

add `SpriteKit.framework`
add NFXBubblePoolView folder.

On your ViewController,import this.

`#import <SpriteKit/SpriteKit.h>`
`#import "NFXBubbleModel.h"`
`#import "NFXBubblePoolView.h"`

`NFXBubblePoolView` can init for initWithFrame or initWithaDecoder(storyboard).

You just call `addModel:(NFXBubbleModel*)model`,add one Node.

`NFXBubbleModel` is simple.this need title,color,data.
Data is int value.


