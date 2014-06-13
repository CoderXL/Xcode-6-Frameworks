//
//  Test1.m
//  Dylib
//
//  Created by zhangjunbo on 14-6-13.
//  Copyright (c) 2014年 ZhangJunbo. All rights reserved.
//

#import "Test1.h"
#import "AFHTTPRequestOperationManager+AutoRetry.h"

@interface Test1 ()

@end

@implementation Test1

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)pop:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)test:(id)sender {
    
    NSString *url = @"http://192.168.8.6:620/basic/customer/phoneLogin";
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"userName", @"17030901",
                         @"passWord",@"123456",
                         @"version",@"2.23",
                         @"phoneType",@"1",
                         @"phoneID",@"123456789",
                         @"phoneToken",@"11111111111",
                         @"osVersion",@"7.0.0",
                         @"isBackground",@"1", nil];
    
    [[AFHTTPRequestOperationManager manager] POST:url parameters:dic success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", error);
    } autoRetry:2];
}


@end
