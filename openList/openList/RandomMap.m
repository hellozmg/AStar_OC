//
//  RandomMap.m
//  openList
//
//  Created by ZhangMg on 15/7/2.
//  Copyright (c) 2015年 ZhangMg. All rights reserved.
//

#import "RandomMap.h"

@implementation RandomMap
-(void)GenerationMap
{
   
}

-(void)genMap

 {
    for (int i = 0; i < self.h; i++)
    {
        NSMutableArray *temp = [[NSMutableArray alloc]init];
        for (int j = 0; j< self.w; j++)
        {
            mapNode *tempNode = [[mapNode alloc] init];
            tempNode.x = i;
            tempNode.y = j;
            //tempNode.value = rand()%2;
            if(rand()% 300<100)
            {
                tempNode.value = 3;
             }
               [temp addObject:tempNode];
            }
         [self.mapData addObject:temp];
      }
}
@end
