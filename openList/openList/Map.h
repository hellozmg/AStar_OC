//
//  Map.h
//  openList
//
//  Created by ZhangMg on 15/7/2.
//  Copyright (c) 2015年 ZhangMg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "mapNode.h"

@interface Map : NSObject

@property int w;
@property int h;




@property (strong)NSMutableArray *mapData;

-(void)genMap;     //生成地图
-(void)printMap;   //打印地图

@end
