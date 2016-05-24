//
//  ThirdTestViewController.m
//  XIBTest
//
//  Created by ZhangYunguang on 16/4/22.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import "ThirdTestViewController.h"

@interface ThirdTestViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ThirdTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIEdgeInsets padding = UIEdgeInsetsMake(64, 10, 10, 10);
    [self.icon makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.top).offset(64);
        make.left.equalTo(self.view.left).offset(padding);
        make.bottom.equalTo(self.view.bottom).offset(-padding.bottom);
        make.right.equalTo(self.view.right).offset(-padding.right);
        make.edges.equalTo(self.view).insets(padding);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
