//
//  OpenList.m
//  openList
//
//  Created by ZhangMg on 15/7/2.
//  Copyright (c) 2015年 ZhangMg. All rights reserved.
//

#import "OpenList.h"

@implementation OpenList

-(id)init
{
    self = [super init];
    self.content = [[NSMutableArray alloc]init];
    return self;
}
-(void)addMapNode:(mapNode *)_node
{
    
    
    mapNode *tempNode = [[mapNode alloc] init];
    [self.content addObject:_node];
    
    for (int i = 0; i < self.content.count; i++)
        {
           tempNode = [self.content objectAtIndex:i];
           if (_node.distance < tempNode.distance)
             {
                 [self.content insertObject:_node atIndex:i];
                 [self.content removeLastObject];
                 break; 
             }
           
          }
    
}
    


-(mapNode *)getFirstNode
{
    
//    mapNode *temp1 = [[mapNode alloc] init];
//    temp1 = [self.content objectAtIndex:0];
//     NSLog(@"open表 索引 0 处的值 ：%d",temp1.distance);
    
    if (self.content.count == 0)
    {
        NSLog(@">>>>>没有可以到达的路径!!!");
        exit(0);
        
     }
   
    
    return [self.content objectAtIndex:0];
    
}

@end
