//
//  ViewController.m
//  DylibTest
//
//  Created by zhangjunbo on 14-6-13.
//  Copyright (c) 2014年 ZhangJunbo. All rights reserved.
//

#import "ViewController.h"
#import "Test2.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)bundleLoadDylibWithPath:(NSString *)path
{

    NSError *err = nil;
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    if ([bundle loadAndReturnError:&err]) {
        NSLog(@"bundle load framework success.");
    } else {
        NSLog(@"bundle load framework err:%@",err);
    }
}

- (IBAction)load:(id)sender {
    NSString *documentsPath = [NSString stringWithFormat:@"%@/Documents/Dylib.framework",NSHomeDirectory()];
    [self bundleLoadDylibWithPath:documentsPath];
}

- (IBAction)run:(id)sender {
    
    Class rootClass = NSClassFromString(@"Person");
    if (rootClass) {
        id object = [[rootClass alloc] init];
//        [(Person *)object run];
        [object performSelector:@selector(run)];
    }
}
- (IBAction)test:(id)sender {
    Class rootClass = NSClassFromString(@"Person");
    if (rootClass) {
        id object = [[rootClass alloc] init];
        //        [(Person *)object run];
        
        [object performSelector:@selector(runUI:) withObject:self.navigationController];
    }
}
- (IBAction)test2:(id)sender {
    Class rootClass = NSClassFromString(@"Person");
    if (rootClass) {
        id object = [[rootClass alloc] init];
        //        [(Person *)object run];
        
        [object performSelector:@selector(run:) withObject:self.navigationController];
    }
}
- (IBAction)push:(id)sender {
    
    UIStoryboard *boad = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    Test2 *vc = (Test2*)[boad instantiateViewControllerWithIdentifier:@"Test2"];
    [self.navigationController pushViewController:vc animated:YES];
    
    NSLog(@"%@", self.navigationController);
}

@end
