//
//  ParallaxTableView.m
//  TestStoryBoard
//
//  Created by zt on 15/3/25.
//  Copyright (c) 2015年 zt. All rights reserved.
//

#import "ParallaxTableView.h"
#import "ParallaxHeaderView.h"

@interface ParallaxTableView(){
    CGFloat headerImageYOffset;
    UIImageView *headerImage;
}

@end

@implementation ParallaxTableView
- (void)configHeaderViewWithImageName:(NSString*)imgName height:(CGFloat)height offset:(CGFloat)offset addToView:(UIView*)view{
    self.backgroundColor = [UIColor clearColor];
    
    ParallaxHeaderView *headerView = [[ParallaxHeaderView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, height)];
    self.tableHeaderView = headerView;
    
    headerImageYOffset = offset;
    headerImage = [[UIImageView alloc] initWithImage: [UIImage imageNamed:imgName]];
    headerImage.backgroundColor = [UIColor yellowColor];
    headerImage.contentMode =  UIViewContentModeCenter;
    CGRect headerImageFrame = headerImage.frame;
    headerImageFrame.origin.y = headerImageYOffset;
    headerImage.frame = headerImageFrame;
    [view insertSubview:headerImage belowSubview:self];
}

- (void)modifyHeaderImageOffset:(UIScrollView *)scrollView{
    CGFloat scrollOffset = scrollView.contentOffset.y;
    CGRect headerImageFrame = headerImage.frame;
    
    if (scrollOffset < 0) {
        headerImageFrame.origin.y = headerImageYOffset - ((scrollOffset / 5));
    } else {
        headerImageFrame.origin.y = headerImageYOffset - scrollOffset;
    }
    headerImage.frame = headerImageFrame;
}
@end
