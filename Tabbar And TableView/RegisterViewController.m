//
//  RegisterViewController.m
//  Tabbar And TableView
//
//  Created by Sindhu Vempati on 17/11/14.
//  Copyright (c) 2014 Sindhu Vempati. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()
{
    NSString *gender;
}

@end

@implementation RegisterViewController
@synthesize firstName,lastName,eMail,dateOB;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [firstName resignFirstResponder];
    [lastName resignFirstResponder];
    [eMail resignFirstResponder];
    [dateOB resignFirstResponder];
    return YES;
}
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[self view] endEditing:YES];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//UIKeyboardType

-(BOOL)textFieldShouldBeginEditing:(UITextField*)textField
{
    dateOB.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    eMail.keyboardType = UIKeyboardTypeEmailAddress;
    
    
    return YES;
}

- (IBAction)segGender:(UISegmentedControl *)sender
{
    if (sender == 0)
        {
        gender = @"Male";
        }else
        {
            gender = @"Female";
        }
}
- (IBAction)btnSubmit:(UIButton *)sender
{
    self.dataSource = [[NSMutableArray alloc]initWithObjects:firstName.text,lastName.text,eMail.text,gender,dateOB.text, nil];
    NSLog(@" Array is %@",self.dataSource);
    NSLog(@"Gender is %@",gender);
    


}
@end
