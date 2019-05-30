//
//  Target_ShopCart.m
//  OBModuleDemo
//
//  Created by syh on 2019/2/22.
//  Copyright © 2019 syh. All rights reserved.
//

#import "Target_ShopCart.h"
#import "ShopCartController.h"

@implementation Target_ShopCart

- (UIViewController *)Action_nativeShopCartController:(NSDictionary *)params{
    ShopCartController *vc = [[ShopCartController alloc] init];
    if (params[@"goodsName"]) {
        vc.goodsName = params[@"goodsName"];
    }
    return vc;
}



@end
