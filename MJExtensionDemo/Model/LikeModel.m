//
//  LikeModel.m
//  MJExtensionDemo
//
//  Created by hanzhanbing on 16/7/7.
//  Copyright © 2016年 asj. All rights reserved.
//

#import "LikeModel.h"

@implementation LikeModel

//replacedKeyFromPropertyName:改变键值对的名
//如果模型中有键值跟系统标示重复使用
+(NSDictionary *)replacedKeyFromPropertyName
{
    //把id -> ID
    return @{@"ID":@"id"};
}

@end
