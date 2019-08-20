//
//  CollectionViewCell.m
//  Gallery
//
//  Created by Barış Güngör on 11.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#import "CategoryCollectionViewCell.h"
#import "JGProgressHUD.h"



@interface CategoryCollectionViewCell ()


#pragma mark - IBActions

@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) IBOutlet UILabel *categoryLabel;

@end

@implementation CategoryCollectionViewCell 
//anything variables defined in .m file is private

#pragma mark - private

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setCategory:(CategoryModel *)category {
    
    _category = category;
   
   
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:_category.imageUrl] cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:300]; //here we used caching, so loading will be faster on other classes

    [self.imageView setImageWithURLRequest:request placeholderImage:nil success:^(NSURLRequest * _Nonnull request, NSHTTPURLResponse * _Nullable response, UIImage * _Nonnull image) {
        self->_imageView.image = image; //here we need to use weakself, but i'll explain it later
    } failure:^(NSURLRequest * _Nonnull request, NSHTTPURLResponse * _Nullable response, NSError * _Nonnull error) {
        
    }];
   
    self.categoryLabel.text = _category.categoryName;
   
}


@end
