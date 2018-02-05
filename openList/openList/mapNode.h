//
//  mapNode.h
//  openList
//
//  Created by ZhangMg on 15/7/2.
//  Copyright (c) 2015年 ZhangMg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface mapNode : NSObject

@property int x;
@property int y;
//@property int state;
@property int value;
@property int distance;
@property int g;


@property int isInOpen;//是否在open 中
@property int isInClose;//



@property mapNode *parent;





@end
