//
//  ViewController.m
//  MJExtensionDemo
//
//  Created by hanzhanbing on 16/7/7.
//  Copyright © 2016年 asj. All rights reserved.
//

#import "ViewController.h"
#import "NetWorkManager.h"
#import "MJExtension.h"
#import "ResultModel.h"
#import "ArticleModel.h"
#import "LikeModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *sendDic=@{@"id":@"",@"pageNo":@"0"};
    [[NetWorkManager sharedManager] postData:@"loadPublicArticleList.htm" parameters:sendDic success:^(NSURLSessionDataTask *task, id responseObject) {
        
        //NSLog(@"data数据流:%@",responseObject);
        
        NSDictionary *resultDic=[NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        
        //NSLog(@"字典:%@",resultDic);
        
        //字典 -> 模型
        ResultModel *result = [ResultModel mj_objectWithKeyValues:resultDic];
        NSLog(@"内容:%@\n结果:%@",result.content,result.result);
        
        //模型 -> 字典
        //NSDictionary *dict = [result mj_keyValues];
        //NSLog(@"模型转字典:%@",dict);
        
        _articleArray = [result.content mutableCopy];
        
        //获取数据
        for (ArticleModel *article in _articleArray) {
            NSLog(@"用户ID:%@\n点赞数组:%@",article.userId,article.likes);
            for (LikeModel *like in article.likes) {
                NSLog(@"点赞ID:%@\n点赞Name:%@",like.ID,like.name);
            }
            for (NSString *picUrl in article.pics) {
                NSLog(@"图片地址:%@",picUrl);
            }
        }
        
        
//        //字典数组 -> 模型数组
//        _articleArray = [ArticleModel mj_objectArrayWithKeyValuesArray:(NSArray *)resultDic[@"content"]];
//        
//        NSLog(@"利用MJExtension解析结果:%@",_articleArray);
//        
//        //获取数据
//        for (ArticleModel *article in _articleArray) {
//            NSLog(@"用户ID:%@\n点赞数组:%@",article.userId,article.likes);
//            for (LikeModel *like in article.likes) {
//                NSLog(@"点赞ID:%@\n点赞Name:%@",like.ID,like.name);
//            }
//            for (NSString *picUrl in article.pics) {
//                NSLog(@"图片地址:%@",picUrl);
//            }
//        }
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
