//
//  TableViewController.m
//  Tabbar And TableView
//
//  Created by Sindhu Vempati on 17/11/14.
//  Copyright (c) 2014 Sindhu Vempati. All rights reserved.
//

#import "TableViewController.h"
#import "AppDelegate.h"
#import "RegisterViewController.h"

@interface TableViewController ()
{
    NSMutableArray *tableArray;
}

@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewWillAppear:(BOOL)animated
{
    AppDelegate *objApp = (AppDelegate*)[UIApplication sharedApplication].delegate;
    RegisterViewController *objReg = objApp.dataRegister;
    tableArray = [objReg.dataSource mutableCopy];
    
    [self.tableView reloadData];
    [super viewWillAppear:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [tableArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString *simpleTable = @"Simple Table";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTable];
    
    if (cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTable];
            
        }
        
        cell.textLabel.text = [tableArray objectAtIndex:indexPath.row];
    
    return cell;
}
    -(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
    {
        UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"Alert" message:[NSString stringWithFormat:@" Selected Value is %@",[tableArray objectAtIndex:indexPath.row]] delegate:self cancelButtonTitle:@"Okay!" otherButtonTitles: nil];
        [myAlert show];
    }
    

@end
