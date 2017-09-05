//
//  ViewController.m
//  DMProtobuf
//
//  Created by lbq on 2017/9/5.
//  Copyright © 2017年 lbq. All rights reserved.
//

#import "ViewController.h"
#import "Message.pbobjc.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SearchRequest *request = [SearchRequest new];
    request.query = @"aaa";
    request.pageNumber = 10;
    request.resultPerPage = 20;
    //编码
    NSData *data = [request data];
    
    //解码
    SearchRequest *search = [SearchRequest parseFromData:data error:nil];
    NSLog(@"searchRequest:%@",search);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
