//
//  ViewController.m
//  IOS_UUID
//
//  Created by Maculish Ting on 15/6/9.
//  Copyright (c) 2015年 LYD. All rights reserved.
//  @" http://zengrong.net/post/2152.htm"

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for (int a=10; a<20; a++) {
        [self uuID];
    }
    [self uuID];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)uuID
{
    NSString *retrieveuuid = [[NSString alloc]init];
    if ( retrieveuuid == nil || [retrieveuuid isEqualToString:@""])
    {
        CFUUIDRef uuid = CFUUIDCreate(NULL);
        assert(uuid != NULL);
        CFStringRef uuidStr = CFUUIDCreateString(NULL, uuid);
        retrieveuuid = [NSString stringWithFormat:@"%@", uuidStr];
        NSLog(@"%@",retrieveuuid);
    }

}

@end
