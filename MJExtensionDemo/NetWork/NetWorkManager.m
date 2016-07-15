//
//  NetWorkManager.m
//  MJExtensionDemo
//
//  Created by hanzhanbing on 16/7/7.
//  Copyright © 2016年 asj. All rights reserved.
//

#import "NetWorkManager.h"

@implementation NetWorkManager

+ (instancetype)sharedManager
{
    static NetWorkManager *_manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[NetWorkManager alloc] initWithBaseURL:nil];
    });
    return _manager;
}

- (NSURLSessionDataTask *)postData:(NSString *)name
                        parameters:(NSDictionary *)parameters
                           success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                           failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.stringEncoding = NSUTF8StringEncoding;
    manager.requestSerializer.timeoutInterval = 10;
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
    manager.responseSerializer.acceptableContentTypes = [self.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
    NSString *urlStr = [NSString stringWithFormat:@"%@%@",@"https://dachuan.ren/api_article/",name];
    
    return [manager POST:urlStr parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        success(task, responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        failure(task, error);
    }];
}

@end
