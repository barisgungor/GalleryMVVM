//
//  HomeCollectionViewDataSource.h
//  Gallery
//
//  Created by Barış Güngör on 12.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#ifndef HomeCollectionViewDataSource_h
#define HomeCollectionViewDataSource_h
#import "CategoryModel.h"
#import "CategoryCollectionViewCell.h"

@interface HomeCollectionViewDataSource : NSObject <UICollectionViewDataSource>
//We're using array, then use grammer if it's plural or single item
//category / categories

- (instancetype)init;

- (CategoryModel *)categoryAtIndexPath:(NSIndexPath *)indexPath;

@end

#endif /* HomeCollectionViewDataSource_h */
