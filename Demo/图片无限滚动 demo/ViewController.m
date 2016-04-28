//
//  ViewController.m
//  图片无限滚动 demo
//
//  Created by xiaoyang on 16/4/21.
//  Copyright © 2016年 卡卡罗特. All rights reserved.
//



#import "ViewController.h"
#import "YCFGInfiniteScrollView.h"
@interface ViewController () <YCFGInfiniteScrollViewDelegate>


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    YCFGInfiniteScrollView *collection = [[YCFGInfiniteScrollView alloc] init];
    
    collection.images = @[
                          [UIImage imageNamed:@"001"],
                          [UIImage imageNamed:@"002"],
                          [UIImage imageNamed:@"003"],
                          [UIImage imageNamed:@"004"],
                          [UIImage imageNamed:@"005"],
                          [UIImage imageNamed:@"006"],
                          [NSURL URLWithString:@"http://pic4.nipic.com/20091215/2396136_140959028451_2.jpg"],
                          [NSURL URLWithString:@"http://tupian.enterdesk.com/2013/mxy/12/10/15/3.jpg"]
                          ];
    collection.frame = CGRectMake(0, 0, self.view.frame.size.width, 200);
    
    collection.delegate = self;
    [self.view addSubview:collection];
    
    
    
    UIView *view = [[UIView alloc] init];
    
    view.backgroundColor = [UIColor grayColor];
    
    view.frame = CGRectMake(0, 200, collection.frame.size.width, [UIScreen mainScreen].bounds.size.height);
    
    [self.view addSubview:view];
    
}


#pragma mark - <XMGInfiniteScrollViewDelegate>
- (void)infiniteScrollView:(YCFGInfiniteScrollView *)infiniteScrollView didClickImageAtIndex:(NSInteger)index
{
    NSLog(@"点击了第%zd张图片", index);
}

@end
