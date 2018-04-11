//
//  LoginViewController.m
//  LoginAndRegister
//
//  Created by acmedcare on 2018/4/8.
//  Copyright © 2018年 acmedcare. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginView.h"

@interface LoginViewController ()

@property(nonatomic,strong)LoginView *loginView;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self congfigLoginUI];
    
}

-(void)congfigLoginUI{
    _loginView=[[LoginView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    _loginView.returnValueBlock = ^(NSString *accountStr, NSString *pwdStr) {
        NSLog(@"----------%@,%@",accountStr,pwdStr);
    };
    [self.view addSubview:_loginView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
