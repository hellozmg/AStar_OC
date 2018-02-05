//
//  OpenList.h
//  openList
//
//  Created by ZhangMg on 15/7/2.
//  Copyright (c) 2015年 ZhangMg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "mapNode.h"

@interface OpenList : NSObject

@property (strong) NSMutableArray *content;





-(void)addMapNode:(mapNode *) _node;
-(mapNode *)getFirstNode;





@end
