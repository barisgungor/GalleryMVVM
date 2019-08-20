//
//  ImageItemCollectionViewCell.m
//  Gallery
//
//  Created by Barış Güngör on 16.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#import "ImageItemCollectionViewCell.h"

@interface ImageItemCollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *categoryItemLabel;

@end

@implementation ImageItemCollectionViewCell

#pragma mark - private

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setItem:(CategoryItemModel *)item{
    
    _item = item;
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:_item.imageItemUrl] cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:300];
    
    [self.imageView setImageWithURLRequest:request placeholderImage:nil success:^(NSURLRequest * _Nonnull request, NSHTTPURLResponse * _Nullable response, UIImage * _Nonnull image) {
        self->_imageView.image = image; //here we need to use weakself, but i'll explain it later
    } failure:^(NSURLRequest * _Nonnull request, NSHTTPURLResponse * _Nullable response, NSError * _Nonnull error) {
        
    }]; //we made this for cache performance improve
    
    
   /* [self.imageView setImageWithURL:[NSURL URLWithString:_item.imageItemUrl]];
    self.categoryItemLabel.text = _item.categoryItemName;*/
}

@end
