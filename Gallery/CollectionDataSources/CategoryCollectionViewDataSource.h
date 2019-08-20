//
//  CategoryCollectionViewDataSource.h
//  Gallery
//
//  Created by Barış Güngör on 16.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CategoryItemModel.h"
#import "ImageItemCollectionViewCell.h"
#import "CategoryModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CategoryCollectionViewDataSource : NSObject <UICollectionViewDataSource>

- (instancetype)init;
- (CategoryItemModel *)categoryAtIndexPath: (NSIndexPath *)indexPath;
@property (nonatomic) CategoryModel *category;
- (void)setCategory:(CategoryModel *)category;


@end

NS_ASSUME_NONNULL_END
