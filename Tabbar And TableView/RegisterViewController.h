//
//  RegisterViewController.h
//  Tabbar And TableView
//
//  Created by Sindhu Vempati on 17/11/14.
//  Copyright (c) 2014 Sindhu Vempati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *firstName;
@property (strong, nonatomic) IBOutlet UITextField *lastName;

@property (strong, nonatomic) IBOutlet UITextField *eMail;

- (IBAction)segGender:(UISegmentedControl *)sender;

@property (strong, nonatomic) IBOutlet UITextField *dateOB;

@property (strong,nonatomic)NSMutableArray *dataSource;

- (IBAction)btnSubmit:(UIButton *)sender;




@end
