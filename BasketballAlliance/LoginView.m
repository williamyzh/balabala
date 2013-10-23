//
//  loginView.m
//  BasketballAlliance
//
//  Created by 杨 志豪 on 13-9-18.
//  Copyright (c) 2013年 Anjuke Inc. All rights reserved.
//

#import "LoginView.h"
#import "MainCenter.h"

@interface LoginView ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIButton *PressLogin;
@property(nonatomic, strong)IBOutlet UITextField *account;
@property(nonatomic, strong)IBOutlet UITextField *password;
@property(nonatomic) BOOL keyboardShow;

@end

@implementation LoginView
@synthesize account = _account;
@synthesize password = _password;
@synthesize PressLogin = _PressLogin;
@synthesize delegate;
@synthesize keyboardShow;

- (void)awakeFromNib{
    self.backgroundColor = [UIColor colorWithRed:178/255 green:8/255 blue:10/255 alpha:1.0f];
    self.account.delegate = self;
    self.password.delegate = self;
    self.keyboardShow = YES;
}

- (IBAction)loginPress:(id)sender {
    if (delegate != nil && [delegate respondsToSelector:@selector(loginbutton)]) {
        NSDictionary *peronalAccount = [NSDictionary dictionaryWithObjectsAndKeys:self.account.text,@"name",self.password.text,@"password", nil];
        if (        [[MainCenter shareDistance] WhetherAccountIsRight:peronalAccount]) {
            [delegate performSelector:@selector(loginbutton)];
        }
        else{
            UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"sorry" message:@"您的账户或者密码不正确 请重新输入" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
            [alertview show];
        }
    }
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (self.keyboardShow) {
        [UIView animateWithDuration:0.5f animations:^{
            self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y-40, self.frame.size.width, self.frame.size.height);
        } completion:^(BOOL finished) {
            self.keyboardShow = !keyboardShow;
        }];
    }
}

- (IBAction)closeKeyboard:(id)sender {
     [sender resignFirstResponder];
}

@end
