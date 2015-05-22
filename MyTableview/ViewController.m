//
//  ViewController.m
//  MyTableview
//
//  Created by 张亚雄 on 15/5/21.
//  Copyright (c) 2015年 张亚雄. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    NSArray *list = [NSArray arrayWithObjects:@"奥迪",@"宝马",@"奔驰",@"凯迪拉克",@"沃尔沃" ,nil];
    self.dataList=list;
    
    UITableView *tableview = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    tableview.dataSource = self;
    tableview.delegate = self;
        self.myTableView = tableview;
    [self.view addSubview:_myTableView];


	
}
#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellWithIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellWithIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:CellWithIdentifier];
    }
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [self.dataList objectAtIndex:row];
    
    cell.detailTextLabel.text = @"详细信息";
    return cell;
}
@end

