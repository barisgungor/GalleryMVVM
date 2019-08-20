//
//  CollectionViewCell.m
//  Gallery
//
//  Created by Barış Güngör on 11.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#import "CategoryCollectionViewCell.h"


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
    [self.imageView setImageWithURL:[NSURL URLWithString:_category.imageUrl]];
    self.categoryLabel.text = _category.categoryName;
    
}


@end
