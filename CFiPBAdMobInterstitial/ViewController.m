//
//  ViewController.m
//  CFiPBAdMobInterstitial
//
//  Created by 郭堯彰 on 2018/3/29.
//  Copyright © 2018年 cf. All rights reserved.
//

#import "ViewController.h"
#import <iMFAD/iMFAD.h>

@interface ViewController ()<MFInterstitialViewDelegate>
{
    MFInterstitialView *fullbanner; // 宣告使用蓋版廣告
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    fullbanner = [[MFInterstitialView alloc]init];;
    fullbanner.bannerId = @"7358" ;
    fullbanner.rootViewController = self;
    fullbanner.delegate = self;
    [fullbanner requestFullScreenAD];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onRequestItstAdSuccess
{
    //顯示蓋版廣告
    [fullbanner show];
}

- (void)onClickItst
{
    NSLog(@"點擊蓋版廣告");
}

-(void)onCloseItst
{
    NSLog(@"蓋版廣告關閉");
}



@end
