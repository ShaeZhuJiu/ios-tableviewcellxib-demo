//
//  MainViewController.m
//  TableViewCustomCell
//
//  Created by 谢鑫 on 2019/5/16.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "MainViewController.h"
#import "FoodModel.h"
#import "FoodCell.h"
#import "FoodXibCell.h"
@interface MainViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)UITableView *tableView;
@property (nonatomic,strong)NSArray *foodArray;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"自定义Cell"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    //属性tableView的set函数
    [self setTableView:[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain]];
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    [self.view addSubview:self.tableView];
    // Do any additional setup after loading the view.
}
-(NSArray *)foodArray{
    if(!_foodArray){
        NSString *path=[[NSBundle mainBundle] pathForResource:@"quanquan.plist" ofType:nil];
        NSArray *dataArray=[NSArray arrayWithContentsOfFile:path];
        NSMutableArray *tempArray=[NSMutableArray array];
        for(NSDictionary *dataDict in dataArray){
            FoodModel *model=[FoodModel modelWithDict:dataDict];
            [tempArray addObject:model];
        }
        _foodArray=[tempArray copy];
    }
    return _foodArray;
}
#pragma mark -Table view delegate -
#pragma mark -Table view data Source -
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 64;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"ddd%zd",[self foodArray].count);
    return [self foodArray].count;
}
-(UITableViewCell *)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   //FoodCell *cell= [[FoodCell alloc]init];
    FoodXibCell *cell=[FoodXibCell cell];
   [cell updateCellWithMode:self.foodArray[indexPath.row]];

    return cell ;
}


@end
