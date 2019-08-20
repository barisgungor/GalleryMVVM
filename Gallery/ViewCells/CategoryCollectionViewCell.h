//
//  CollectionViewCell.h
//  Gallery
//
//  Created by Barış Güngör on 11.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface CategoryCollectionViewCell : UICollectionViewCell

@property (nonatomic) CategoryModel *category;
@property (nonatomic) BOOL loadingDataInformationCell;

@end

NS_ASSUME_NONNULL_END
