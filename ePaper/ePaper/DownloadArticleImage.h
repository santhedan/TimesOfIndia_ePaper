//
//  DownloadArticleImage.h
//  ePaper
//
//  Created by Sanjay Dandekar on 30/09/14.
//  Copyright (c) 2014 An Indian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArticleImageViewerController.h"

@interface DownloadArticleImage : NSOperation

@property (nonatomic, copy) NSString* imageUrl;
@property (nonatomic, strong) ArticleImageViewerController* ctrl;

@end
