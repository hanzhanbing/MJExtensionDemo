//
//  ArticleModel.m
//  MJExtensionDemo
//
//  Created by hanzhanbing on 16/7/7.
//  Copyright © 2016年 asj. All rights reserved.
//

#import "ArticleModel.h"

@implementation ArticleModel

+(NSDictionary *)objectClassInArray
{
    return @{
             @"comments":@"CommentModel",
             @"likes":@"LikeModel",
             };
}

@end
