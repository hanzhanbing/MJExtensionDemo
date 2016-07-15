//
//  NetWorkManager.h
//  MJExtensionDemo
//
//  Created by hanzhanbing on 16/7/7.
//  Copyright © 2016年 asj. All rights reserved.
//

#import "AFHTTPSessionManager.h"
#import "AFNetworking.h"

@interface NetWorkManager : AFHTTPSessionManager

#pragma mark - 接口请求(返回data数据流)

/**
 *  无弹框POST请求(只请求data数据流，具体操作放在使用的地方)
 *
 *  @param name       接口名称
 *  @param parameters 传参
 *  @param success    成功回调
 *  @param failure    失败回调
 *
 *  @return NSURLSessionDataTask
 */
- (NSURLSessionDataTask *)postData:(NSString *)name
                        parameters:(NSDictionary *)parameters
                           success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                           failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

+ (instancetype)sharedManager;

@end
