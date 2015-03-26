//
//  ParallaxHeaderView.m
//  TestStoryBoard
//
//  Created by zt on 15/3/25.
//  Copyright (c) 2015年 zt. All rights reserved.
//

#import "ParallaxHeaderView.h"

@implementation ParallaxHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (instancetype)initWithFrame:(CGRect)frame{
  self =  [super initWithFrame:frame];
    if (self) {
        UILabel *lbUser = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
        lbUser.text = @"测试";
        lbUser.textColor = [UIColor whiteColor];
        lbUser.center = self.center;
        lbUser.textAlignment = NSTextAlignmentCenter;
        lbUser.backgroundColor = [UIColor clearColor];
        lbUser.font = [UIFont boldSystemFontOfSize:34];
        [self addSubview:lbUser];
    }
    return self;
}
@end
