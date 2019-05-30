//
//  HomeController.m
//  OBModuleDemo
//
//  Created by syh on 2019/2/22.
//  Copyright © 2019 syh. All rights reserved.
//

#import "HomeController.h"
#import "GoodsModel.h"
#import "CTMediator+CartActions.h"
#import "CTMediator+OrderActions.h"

@interface HomeController ()
@property (nonatomic, strong) GoodsModel *goods;
@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"主页";
    
    _goods = [[GoodsModel alloc] init];
    _goods.name = @"apple";
    _goods.goodsId = @"666666";
    _goods.price = @"10";
}

- (IBAction)pushToCart:(UIButton *)sender {
    UIViewController *vc = [[CTMediator sharedInstance] CTMediator_viewControllerForCart:@{@"goodsName":_goods.name}];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)pushToOrder:(UIButton *)sender {
    UIViewController *vc = [[CTMediator sharedInstance] CTMediator_viewControllerForOrder:@{@"goodsId":_goods.goodsId}];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
