//
//  TableViewCell.h
//  XIBTest
//
//  Created by ZhangYunguang on 16/4/20.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end
