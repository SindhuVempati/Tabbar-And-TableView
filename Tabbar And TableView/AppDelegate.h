//
//  AppDelegate.h
//  Tabbar And TableView
//
//  Created by Sindhu Vempati on 17/11/14.
//  Copyright (c) 2014 Sindhu Vempati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterViewController.h"
#import "TableViewController.h"
@class RegisterViewController;
@class TableViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate,UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) RegisterViewController *dataRegister;
@property (strong, nonatomic) TableViewController *contentTable;
@property (strong, nonatomic) UITabBarController *tabBar;

@end
