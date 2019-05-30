//
//  Target_Home.m
//  OBModuleDemo
//
//  Created by syh on 2019/2/22.
//  Copyright © 2019 syh. All rights reserved.
//

#import "Target_Home.h"
#import "HomeController.h"

@implementation Target_Home

- (UIViewController *)Action_nativeHomeController:(NSDictionary *)params{
    HomeController *vc = [[HomeController alloc] init];
    return vc;
}

@end
