//
//  UI.h
//  openList
//
//  Created by ZhangMg on 15/7/8.
//  Copyright (c) 2015年 ZhangMg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OpenList.h"
#import "RandomMap.h"
#import "AStar.h"
#import "MyMap.h"
#import "Greedy.h"
#import "MazeMap.h"

@interface UI : NSObject




-(void)selectSuanFa;
-(void)selectMap;

-(void)chuShiHua_AStar:(Map *)_map and:(mapNode *)starNode and:(mapNode *)endNode;

-(void)chuShiHua_Greedy:(Map *)_map and:(mapNode *)starNode and:(mapNode *)endNode;

-(Map *)chushihua_MyMap;

-(Map *)chuShiHua_RandomMap;
-(Map *)chuShiHua_MazeMap;

-(mapNode *)starNode;
-(mapNode *)endNode;
-(mapNode *)MazeMapStar;
-(mapNode *)MazeMapEnd;
-(void)donghua;

@end
