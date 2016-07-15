//
//  ArticleModel.h
//  MJExtensionDemo
//
//  Created by hanzhanbing on 16/7/7.
//  Copyright © 2016年 asj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommentModel.h" //评论Model
#import "LikeModel.h" //点赞Model

@interface ArticleModel : NSObject

@property (nonatomic,copy)   NSString *attention;
@property (nonatomic,copy)   NSString *comment;
@property (nonatomic,retain) NSArray *comments;
@property (nonatomic,copy)   NSString *content;
@property (nonatomic,copy)   NSString *isPublic;
@property (nonatomic,retain) NSArray *labels;
@property (nonatomic,copy)   NSString *like;
@property (nonatomic,retain) NSArray *likes;
@property (nonatomic,retain) NSArray *pics;
@property (nonatomic,copy)   NSString *sid;
@property (nonatomic,copy)   NSString *time;
@property (nonatomic,copy)   NSString *title;
@property (nonatomic,copy)   NSString *userId;
@property (nonatomic,copy)   NSString *userName;
@property (nonatomic,copy)   NSString *userimg;

@end
