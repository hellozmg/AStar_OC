//
//  Map.m
//  openList
//
//  Created by ZhangMg on 15/7/2.
//  Copyright (c) 2015年 ZhangMg. All rights reserved.
//

#import "Map.h"

@implementation Map
-(id)init
{
    self = [super init];
    self.mapData = [[NSMutableArray alloc]init];
    return self;
}

-(void)genMap
{
  
    
  
     
}



-(void)printMap
{
    //NSLog(@"生成了地图");
   // NSMutableArray *temp = [[NSMutableArray alloc] init];
    //temp=self.mapData[0][1];
   // NSLog(@"%@",temp);
    
    for (int x = 0; x<self.w; x++)
    {
        printf("%3d",x);
    }
    printf("\n");
    
    for (int i = 0; i<self.h; i++)
    {
      
        
        for (int j= 0; j< self.w; j++)
        {
            
            //NSNumber *nodeData = self.mapData[i][j];
            mapNode  *tempData = self.mapData[i][j];

            
            switch ( tempData.value)//[nodeData intValue])
            {
                case 0:
                    printf(" ❄️");
                    break;
                    
                case 1:
                    printf(" 👦");
                    break;
                    
                case 2:
                    printf(" 👸");
                    break;
                case 3:
                    printf(" 🌵");
                    break;
                case 4:
                    printf(" 📦");
                    break;
                    
                case 5:
                    printf(" 💔");
                    break;
                    
                default:
                    //printf(" 3");
                    break;
            }
        
              
        }
        printf("%2d",i);

            printf("\n");
    }
    
}


@end
