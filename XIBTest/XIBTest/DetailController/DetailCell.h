//
//  DetailCell.h
//  XIBTest
//
//  Created by ZhangYunguang on 16/4/20.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailModel.h"

@interface DetailCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *autoLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UIButton *likeButton;

- (void)showCellWithModel:(DetailModel *)model;
+(CGFloat)heightOfObject:(DetailModel *)model;
@end
