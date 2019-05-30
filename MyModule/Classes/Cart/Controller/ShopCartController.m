//
//  ShopCartController.m
//  OBModuleDemo
//
//  Created by syh on 2019/2/22.
//  Copyright © 2019 syh. All rights reserved.
//

#import "ShopCartController.h"

@interface ShopCartController ()

@property (weak, nonatomic) IBOutlet UILabel *goodsNamelab;

@end

@implementation ShopCartController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"购物车";
    
    self.goodsNamelab.text = self.goodsName;
}

@end
