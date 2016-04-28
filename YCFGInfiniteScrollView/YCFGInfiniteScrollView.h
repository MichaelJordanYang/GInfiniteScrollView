//
//  YCFGInfiniteScrollView.h
//  图片无限滚动 demo
//
//  Created by xiaoyang on 16/4/21.
//  Copyright © 2016年 卡卡罗特. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YCFGInfiniteScrollView;
@protocol YCFGInfiniteScrollViewDelegate <NSObject>

@optional

- (void)infiniteScrollView:(YCFGInfiniteScrollView *)infiniteScrollView didClickImageAtIndex:(NSInteger)index;

@end

@interface YCFGInfiniteScrollView : UIView

// ** 下载远程图片的占位图片 */
@property (nonatomic, strong) UIImage *placeholderImage;

/** 需要显示的图片数据(要求里面存放UIImage对象) */
@property (nonatomic ,strong) NSArray *images;

//** 设置代理方法监听内部事件 */
@property (nonatomic ,weak) id delegate;

@end

