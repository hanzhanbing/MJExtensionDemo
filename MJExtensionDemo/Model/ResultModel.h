//
//  ResultModel.h
//  MJExtensionDemo
//
//  Created by hanzhanbing on 16/7/7.
//  Copyright © 2016年 asj. All rights reserved.
//

/**
 *  后台返回完整数据
 */

#import <Foundation/Foundation.h>
#import "ArticleModel.h"

@interface ResultModel : NSObject

@property (nonatomic,retain) NSArray *content;
@property (nonatomic,copy)   NSString *result;

@end
