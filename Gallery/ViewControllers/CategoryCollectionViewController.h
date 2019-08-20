//
//  CategoryCollectionViewController.h
//  Gallery
//
//  Created by Barış Güngör on 16.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CategoryCollectionViewController : UIViewController <UICollectionViewDelegate>

@property (nonatomic) CategoryModel *category;


@end

NS_ASSUME_NONNULL_END
