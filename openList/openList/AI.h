//
//  AI.h
//  openList
//
//  Created by ZhangMg on 15/7/3.
//  Copyright (c) 2015年 ZhangMg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OpenList.h"
#import "Map.h"
@interface AI : NSObject


@property(strong) OpenList *openlist;
@property(strong) Map *map;

//@property (strong) NSMutableArray *path;


-(void)insertToOpen:(mapNode *)currentNode and:(mapNode *)endNode andx:(int) x andy:(int) y andg:(int)g;
-(void)getNeighbor:(mapNode *)currentNode and:(mapNode *)endNode;



-(void)findPath:(mapNode *)startNode and:(mapNode *)endNode;



@end
