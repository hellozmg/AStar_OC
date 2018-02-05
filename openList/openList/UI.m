//
//  UI.m
//  openList
//
//  Created by ZhangMg on 15/7/8.
//  Copyright (c) 2015年 ZhangMg. All rights reserved.
//

#import "UI.h"

@implementation UI
int input1;
-(void)donghua
{
    printf("\n5秒后返回主界面....\n");
    
    for (int x = 5; x > 0; x--) {
        sleep(1);
        printf(".....%d..",x);
    }
    printf("\n\n");
}

-(mapNode *)starNode
{
        mapNode *startNode = [[mapNode alloc] init];
 
        int startX,startY;
    
        printf("请输入起点:（注意不要和障碍物重合）::");
        scanf("%d %d",&startX,&startY);
    
        startNode.x = startX;
        startNode.y = startY;
       // startNode.value =1;
    return startNode;
   
}


-(mapNode *)endNode
{
        mapNode *endNode = [[mapNode alloc] init];
    
        int endX,endY;
    
        printf("请输入终点:（注意不要和障碍物重合）::");
        scanf("%d %d",&endX,&endY);
    
        endNode.x = endX ;
        endNode.y = endY;//手动设置起止点
    //endNode.value = 2;
    return endNode;
}

-(mapNode *)MazeMapStar
{
    mapNode *startNode = [[mapNode alloc] init];
    int startX,startY;
    printf("请输入起点:<建议起点设定为：（19  7） 以免迷路>:");
    scanf("%d %d",&startX,&startY);
    startNode.x = startX;
    startNode.y = startY;
    return startNode;
    
}


-(mapNode *)MazeMapEnd
{
    mapNode *endNode = [[mapNode alloc] init];
    endNode.x = 0 ;
    endNode.y = 19;
    return endNode;
}



-(Map *)chushihua_MyMap
{
    MyMap *mMap = [[MyMap alloc] init];
    mMap.h = 20;mMap.w = 15;
    [mMap genMap];//生成地图
    
    [mMap printMap];//打印地图：
   
    return mMap;
}


-(Map *)chuShiHua_RandomMap
{
        RandomMap *rMap = [[RandomMap alloc] init];
        int h,w;
        printf("请输入随机地图的 高:");
        scanf("%d",&h);
        printf("请输入随机地图的 宽:");
        scanf("%d",&w);
    printf("\n");
    
        rMap.h = h;rMap.w = w;
        [rMap genMap];//生成地图
    
        [rMap printMap];//打印地图：
    
    return rMap;
}

-(Map *)chuShiHua_MazeMap
{
    
    MazeMap *maze_Map = [[MazeMap alloc] init];
    maze_Map.h = 20;maze_Map.w = 20;
    [maze_Map genMap];//生成地图
    [maze_Map printMap];//打印地图：
    return maze_Map;
}





-(void)chuShiHua_Greedy:(Map *)_map and:(mapNode *)starNode and:(mapNode *)endNode
{
    OpenList *openlist = [[OpenList alloc] init];
    Greedy *gre = [[Greedy alloc] init];
    gre.map = _map;
    gre.openlist = openlist;
    [gre findPath:starNode and:endNode];
    
}

-(void)chuShiHua_AStar:(Map *)_map and:(mapNode *)starNode and:(mapNode *)endNode
{

    OpenList *openlist = [[OpenList alloc] init];
    AStar *star = [[AStar alloc] init];
    star.map  = _map;
    star.openlist = openlist;
    [star findPath:starNode and:endNode];
}



-(void)selectSuanFa
{
   
    int input2;
    printf("         💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙\n");
    usleep(50000);
    printf("         💙                                                              💙 \n");
    usleep(80000);
    printf("         💙       💓💓💓💓💓💓💓💓算法类型💓💓💓💓💓💓💓💓💓 💓💓💓     💙 \n");
    usleep(50000);
    printf("         💙       💓                                             💓      💙 \n");
    usleep(50000);
    printf("         💙       💓     1,A星算法      2,贪心算法    3,重选地图     💓      💙 \n");
    usleep(50000);
    printf("         💙       💓                                             💓      💙  \n");
    usleep(50000);
    printf("         💙       💓💓💓💓💓💓💓💓💓💓💓💓💓💓💓💓💓💓💓💓 💓💓💓      💙  \n");
    usleep(80000);
    printf("         💙                                                              💙 \n");
    
    usleep(50000);
    printf("         💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙💙\n\n"); usleep(50000);
    printf("                        请选择：");
    scanf("%d",&input2);
    switch (input2) {
        case 1:
            //调用初始化函数
            //[self chuShiHua_AStar];
            if (input1 == 1)
            {usleep(50000);usleep(50000);
                [self chuShiHua_AStar:[self chushihua_MyMap] and:[self starNode] and:[self endNode]];
                
                [self donghua];
                
                [self selectMap];
            }
            if (input1 == 2)
            {
                usleep(50000);usleep(50000);
                //[self chuShiHua_Greedy];
                [self chuShiHua_AStar:[self chuShiHua_RandomMap] and:[self starNode]  and:[self endNode]];
                [self donghua];
                [self selectMap];

            }
            if(input1 == 3)
            {
               usleep(50000);usleep(50000);
            [self chuShiHua_AStar:[self chuShiHua_MazeMap]and:[self MazeMapStar ] and:[self MazeMapEnd]];
                [self donghua];
                [self selectMap];

                
            }
            
            
            break;
        case 2:
            if (input1 == 1)
            {
                usleep(50000);usleep(50000);
                [self chuShiHua_Greedy:[self chushihua_MyMap] and:[self starNode] and:[self endNode]];
                [self donghua];
                
                [self selectMap];

            }
            if (input1 == 2)
            {
                usleep(50000);usleep(50000);
                [self chuShiHua_Greedy:[self chuShiHua_RandomMap] and:[self starNode] and:[self endNode]];
                [self donghua];
                
                [self selectMap];

            }
            if(input1 == 3)
            {
                usleep(50000);usleep(50000);
              [self chuShiHua_Greedy:[self chuShiHua_MazeMap] and:[self MazeMapStar ] and:[self MazeMapEnd]];
                
               [self donghua];
                
                [self selectMap];

            }
           
            break;
        case 3:
            [self selectMap];
            break;
          default:
            NSLog(@"选择无效！请重新选择");
            [self selectSuanFa];
            
            break;
    }
    
    
    
    
}







-(void)selectMap
{
    printf("         💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗\n");
    usleep(80000);
    printf("         💗                                                               💗  \n");
    usleep(80000);
    printf("         💗       💧💧💧💧💧💧💧💧💧💧💧地图类型💧💧💧💧💧💧💧💧💧       💗 \n");
    usleep(80000);
    printf("         💗       💧                                             💧       💗 \n");
    usleep(80000);
    printf("         💗       💧            1,我的地图                        💧       💗 \n");
    usleep(80000);
    printf("         💗       💧            2,随机地图                        💧       💗 \n");
    usleep(80000);
    printf("         💗       💧            3.迷宫地图                        💧       💗 \n");
    usleep(80000);
    printf("         💗       💧            4,退出                            💧       💗 \n");
    usleep(80000);
    printf("         💗       💧💧💧💧💧💧💧💧💧💧💧💧💧💧💧💧💧💧💧💧💧💧 💧       💗 \n");
    usleep(80000);
    printf("         💗                                                               💗 \n");
    usleep(80000);
    printf("         💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗💗\n\n");
    usleep(80000);
    printf("                        请选择：");
    scanf("%d",&input1);
    switch (input1) {
        case 1:
            
            [self selectSuanFa];
            break;
        case 2:
            [self selectSuanFa];
            break;
        case 3:
            [self selectSuanFa];
            break;
        case 4:
            exit(0);break;
          default:
            NSLog(@"选择无效!请重新选择");
            [self selectMap];
            break;
    }



}

@end
