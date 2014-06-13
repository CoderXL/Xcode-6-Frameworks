//
//  Test.m
//  Dylib
//
//  Created by zhangjunbo on 14-6-13.
//  Copyright (c) 2014年 ZhangJunbo. All rights reserved.
//

#import "Test.h"

@interface Test ()

@end

@implementation Test

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
- (IBAction)push:(id)sender {
    [self performSegueWithIdentifier:@"push" sender:self];
}
- (IBAction)pop:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
