//
//  Person.m
//  Dylib
//
//  Created by zhangjunbo on 14-6-13.
//  Copyright (c) 2014年 ZhangJunbo. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Person.h"

#import "Test.h"

@implementation Person

- (void)run
{
    NSLog(@"let's run.");
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"The Second Alert" message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"done", nil];
    [alert show];
}

- (void)runUI:(UINavigationController *)navVC
{
    
    NSLog(@"let's runUI.");
    
    NSString *documentsPath = [NSString stringWithFormat:@"%@/Documents/Dylib.framework",NSHomeDirectory()];
    NSBundle *bundle = [NSBundle bundleWithPath:documentsPath];
    
    UIStoryboard *boad = [UIStoryboard storyboardWithName:@"Storyboard" bundle:bundle];
    NSLog(@"%@", boad);
    
    Test *vc = (Test*)[boad instantiateViewControllerWithIdentifier:@"Test"];
    
    NSLog(@"%@", vc);
    
    [navVC pushViewController:vc animated:YES];
}

- (void)run:(UINavigationController *)navVC
{
    NSLog(@"let's runUI.");
    
    NSString *documentsPath = [NSString stringWithFormat:@"%@/Documents/Dylib.framework",NSHomeDirectory()];
    NSBundle *bundle = [NSBundle bundleWithPath:documentsPath];
    
    UIStoryboard *boad = [UIStoryboard storyboardWithName:@"Storyboard" bundle:bundle];
    NSLog(@"%@", boad);
    NSLog(@"%@", boad.debugDescription);
    
    Test *vc = (Test*)[boad instantiateViewControllerWithIdentifier:@"Test"];
    
    NSLog(@"%@", vc);
    NSLog(@"%@", vc.debugDescription);
    
    [navVC pushViewController:vc animated:YES];
}

@end
