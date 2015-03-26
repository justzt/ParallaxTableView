//
//  ParallaxTableView.h
//  TestStoryBoard
//
//  Created by zt on 15/3/25.
//  Copyright (c) 2015年 zt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCParallaxTableView : UITableView
/**
 *  配置tablview 的header，指定header的背景图片，高度，起始offset，
 *
 *  @param imgName header的背景图片
 *  @param height  header高度
 *  @param offset  header起始偏移量
 *  @param view    header和tableview的容器view
 */
- (void)configHeaderViewWithImageName:(NSString*)imgName height:(CGFloat)height offset:(CGFloat)offset addToView:(UIView*)view;

/**
 *  修改header image 的偏移量， 让header随着tableview滚动变化，需要在scrollViewDidScroll方法中调用
 *
 *  @param scrollView scrollView
 */
- (void)modifyHeaderImageOffset:(UIScrollView *)scrollView;
@end
