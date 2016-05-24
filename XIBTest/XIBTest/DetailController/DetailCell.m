//
//  DetailCell.m
//  XIBTest
//
//  Created by ZhangYunguang on 16/4/20.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import "DetailCell.h"
#import "NSString+StringHeight.h"

@implementation DetailCell

- (void)awakeFromNib {
    // Initialization code
    self.backgroundColor = [UIColor whiteColor];
}

-(void)showCellWithModel:(DetailModel *)model{
    self.contentLabel.text = model.text;
    [self cacuelateFrameWithModel:model];
}
-(void)cacuelateFrameWithModel:(DetailModel *)model{
    CGRect tempFrame = self.contentLabel.frame;
    tempFrame.size.height = [model.text heightWithWidth:[[UIScreen mainScreen] bounds].size.width - 16 fontSize:17];
    self.contentLabel.frame = tempFrame;
    CGRect likeFrame = self.likeButton.frame;
    likeFrame.origin.y = self.contentLabel.frame.origin.y + self.contentLabel.frame.size.height + 1;
    self.likeButton.frame = likeFrame;
}
+(CGFloat)heightOfObject:(DetailModel *)model{
    CGFloat height = 29;
    height += [model.text heightWithWidth:[[UIScreen mainScreen] bounds].size.width - 16 fontSize:17];
    height += 25;
    return height;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
