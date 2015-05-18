# VMBubbleComitText
https://youtu.be/ia4ga9S6oZI

#Author
VuMai
vumai.me

## Overview ##
VMBubbleComitText is creating all kinds of bubble under the existing format. You can create comic pages with your available image.

## How to use ##

First, you need to copy folder SourceCode to your project. Then, import them to your class

```objc
#import "VMBubbleText.h"
```

Now you can add this funtion to show bubble text with type:

```objc
    // 1
    VMBubbleText *draw = [[VMBubbleText alloc] initWithFrame:CGRectMake(50, 100, 200, 100)];
    draw.backgroundColor = [UIColor whiteColor];
    draw.boderColor = [UIColor blackColor];
    draw.typeOfBubble = type;
    
    [draw initBubbleOval];//2
```
Let’s run through this method step by step:

1. Make bubble commic text with background color, boder color, type
with:

type = 1: 

![alt tag](https://cloud.githubusercontent.com/assets/8335578/7679487/6bef2280-fd87-11e4-93e0-3fc1ed6112f4.png)

type = 2: 

![alt tag](https://cloud.githubusercontent.com/assets/8335578/7679491/6c4b0fe6-fd87-11e4-8e27-d317d22882a1.png)

type = 3: 

![alt tag](https://cloud.githubusercontent.com/assets/8335578/7679489/6c49e940-fd87-11e4-8dc5-af6d336a03f8.png)

type = 4: 

![alt tag](https://cloud.githubusercontent.com/assets/8335578/7679490/6c4a8896-fd87-11e4-9d9e-a3ed191a6cf5.png)

type = 5: 

![alt tag](https://cloud.githubusercontent.com/assets/8335578/7679494/6c4d137c-fd87-11e4-989c-3c8eb9c81e76.png)

type = 6: 

![alt tag](https://cloud.githubusercontent.com/assets/8335578/7679493/6c4c9794-fd87-11e4-9f26-19062b4c1c83.png)

type = 7: 

![alt tag](https://cloud.githubusercontent.com/assets/8335578/7679488/6c1cc992-fd87-11e4-9b0d-86e7d820d9d9.png)

type = 8: 

![alt tag](https://cloud.githubusercontent.com/assets/8335578/7679492/6c4c1404-fd87-11e4-9600-b61be093d1c4.png)

2. Make bubble text with config you make.

## Release notes

Version 1.0

## MIT License
Copyright (c) 2015 VuMai

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

