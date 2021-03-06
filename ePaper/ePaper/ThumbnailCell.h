//
//  ThumbnailCell.h
//  ePaper
//
//  Created by Sanjay Dandekar on 19/09/14.
//  Copyright (c) 2014 An Indian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThumbnailCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView* thumbnail;

- (void) loadThumbnail: (NSString *) url;

@property (weak, nonatomic) IBOutlet UILabel *pageName;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
