//
//  ViewController.h
//  MyTableview
//
//  Created by 张亚雄 on 15/5/21.
//  Copyright (c) 2015年 张亚雄. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController :
UIViewController
<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) NSArray *dataList;

@property (nonatomic, retain) UITableView *myTableView;


@end

