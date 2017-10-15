//
//  TableViewController.h
//  Tabbar And TableView
//
//  Created by Sindhu Vempati on 17/11/14.
//  Copyright (c) 2014 Sindhu Vempati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController <UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end
