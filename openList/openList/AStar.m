//
//  AStar.m
//  openList
//
//  Created by ZhangMg on 15/7/3.
//  Copyright (c) 2015年 ZhangMg. All rights reserved.
//

#import "AStar.h"


@implementation AStar

-(BOOL)detect:(mapNode *)current
{
    //取出current周围的点，符合要求的加入open表
    
    // 下面对于8个邻居进行处理！
    //
    return YES;
}
-(void)insertToOpen:(mapNode *)currentNode and:(mapNode *)endNode andx:(int)m andy:(int)n andg:(int)g
{
   mapNode *tempNode=[[self.map.mapData objectAtIndex:m] objectAtIndex:n];
     if(tempNode.value != 3 && tempNode.value != 4)  //不是障碍物
    {
        if (tempNode.isInClose !=1 )  //不在闭表中
            {
                if(tempNode.isInOpen != 1)  //如果不在open表中
                {
                        tempNode.g = tempNode.g + g; //   oh! No
                        tempNode.distance = (abs(tempNode.x - endNode.x)+abs(tempNode.y - endNode.y)) +tempNode.g;//如果给 H加上一个系数
                        tempNode.parent = currentNode;
                        tempNode.isInOpen = 1; //标记为在open表中
                        //NSLog(@"%@",tempNode.parent);
                        [self.openlist addMapNode:tempNode];
                    
                }
                
              }
     }
 }


-(void)getNeighbor:(mapNode *)currentNode and:(mapNode *)endNode
{
   // NSLog(@"getNeighbor执行了！");
    int x = currentNode.x;
    int y = currentNode.y;
   
     if ( x >= 0 && x < self.map.h && ( y + 1 ) >= 0 && ( y + 1 ) < self.map.w )
    {
          [self insertToOpen:currentNode and:endNode andx:x andy:y +1 andg:7];
    }
   
    if ( ( x + 1 ) >= 0 && ( x + 1 ) < self.map.h && y >= 0 && y < self.map.w )
    {
       
       [self insertToOpen:currentNode and:endNode andx:x+1 andy:y andg:7];
        
    }
    if ( ( x - 1 ) >= 0 && ( x - 1 ) < self.map.h && y >= 0 && y < self.map.w )
    {
       
        [self insertToOpen:currentNode and:endNode andx:x-1 andy:y andg:7];
    }
    
    
    if ( x >= 0 && x < self.map.h && ( y - 1 ) >= 0 && ( y - 1 ) < self.map.w )
    {
       
        [self insertToOpen:currentNode and:endNode andx:x andy:y-1 andg:7];
        }
    
    
    
    /*斜着走*/
    
    if ( ( x + 1 ) >= 0 && ( x + 1 ) < self.map.h && ( y + 1 ) >= 0 && ( y + 1 ) < self.map.w )
    {
        
        [self insertToOpen:currentNode and:endNode andx:x+1 andy:y +1 andg:10];
       
    }
    
    if ( ( x + 1 ) >= 0 && ( x + 1 ) < self.map.h && ( y - 1 ) >= 0 && ( y - 1 ) < self.map.w )
    {
      
        [self insertToOpen:currentNode and:endNode andx:x+1 andy:y-1 andg:10];
      
    }
    
    if ( ( x - 1 ) >= 0 && ( x - 1 ) < self.map.h && ( y + 1 ) >= 0 && ( y + 1 ) < self.map.w )
    {
       
        [self insertToOpen:currentNode and:endNode andx:x-1 andy:y +1 andg:10];
           }
    
    if ( ( x - 1 ) >= 0 && ( x - 1 ) < self.map.h && ( y - 1 ) >= 0 && ( y - 1 ) < self.map.w )
    {
        [self insertToOpen:currentNode and:endNode andx:x-1 andy:y-1 andg:10];
    }
    
 
    
}


-(void)findPath:(mapNode *)startNode and:(mapNode *)endNode
{
    startNode=[[self.map.mapData objectAtIndex:startNode.x] objectAtIndex:startNode.y];
    endNode=[[self.map.mapData objectAtIndex:endNode.x] objectAtIndex:endNode.y];
    
    startNode.value = 1;
    endNode.value = 2;

    
    [self.openlist addMapNode:startNode]; //起点放入open表，；
    startNode.isInOpen = 1;
    startNode.g = 0;
    startNode.distance = abs(startNode.x - endNode.x)+abs(startNode.y - endNode.y);
    startNode.parent = NULL;
   if (startNode.x==endNode.x && startNode.y==endNode.y)
    {
        NSLog(@"起点与终点重合！");
    }
    
    mapNode *currNode;
    NSMutableArray *path =[[NSMutableArray alloc] init];//存放路径的点
    mapNode *tempPath = [[mapNode alloc]init];           //取出点
    int number = 0 ;
    while (1)
    {
        currNode = [self.openlist getFirstNode];
        currNode.isInClose = 1;
        
        [self.openlist.content removeObjectAtIndex:0];
        [self  getNeighbor:currNode and:endNode];
        
       if (currNode.x == endNode.x && currNode.y == endNode.y )
        {
            while (currNode)
            {
                //  NSLog(@"%d,%d",currNode.parent.x,currNode.parent.y);// 改为反向遍历
               [path addObject:currNode];
                number++;
                currNode = currNode.parent;
            }
            
            for (int x = number-2; x>0; x--)
            {
                tempPath = [path objectAtIndex:x];
                tempPath.value = 5;
               // NSLog(@"<%d,%d>",tempPath.x,tempPath.y);
                [self.map printMap];
                
                printf("\n\n\n\n\n\n\n");
                //usleep(150000);
                usleep(150000);
            }
            
            NSLog(@"寻路完成！！");//小红走了%d步 ，找到了终点",number);
            
            break;
        }
        
        
       
    }
    
}

@end
