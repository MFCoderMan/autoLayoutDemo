//
//  TableViewCell.m
//  XIBTest
//
//  Created by ZhangYunguang on 16/4/20.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
}
-(void)prepareForReuse{
    self.contentLabel.text = nil;
    self.contentLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    self.layer.drawsAsynchronously = YES;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
