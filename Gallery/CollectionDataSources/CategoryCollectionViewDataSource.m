//
//  CategoryCollectionViewDataSource.m
//  Gallery
//
//  Created by Barış Güngör on 16.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CategoryCollectionViewDataSource.h"
#import "CategoryCOllectionViewController.h"
#import "JGProgressHUD.h"
@interface CategoryCollectionViewDataSource()

@property (nonatomic) NSArray <CategoryItemModel *> *categoryItems;

@end

@implementation CategoryCollectionViewDataSource

static  NSString * const reuseIdentifier = @"CellItem";

#pragma mark - Public

- (instancetype)init {
    self = [super init];
  
    if (self) {

        NSError *error;
        CategoryItemModel *testModel = [[CategoryItemModel alloc] initWithDictionary:@{@"categoryItemId" : @"1", @"categoryItemName":@"Furniture", @"imageItemUrl": @"https://res-5.cloudinary.com/dwpujv6in/image/upload/c_pad,dpr_2.0,f_auto,h_930,q_auto,w_930/v1/media/catalog/product/f/d/fd1_lngchr_bh_frontlow-field-lounge-chair-tait-blush.jpg"} error:&error];
           CategoryItemModel *testModel2 = [[CategoryItemModel alloc] initWithDictionary:@{@"categoryItemId" : @"2", @"categoryItemName":@"Furniture2", @"imageItemUrl": @"https://res-5.cloudinary.com/dwpujv6in/image/upload/c_pad,dpr_2.0,f_auto,h_930,q_auto,w_930/v1/media/catalog/product/f/d/fd1_lngchr_bh_frontlow-field-lounge-chair-tait-blush.jpg"} error:&error];
        
        self.categoryItems = @[testModel, testModel2];
    }
    return self;
}

- (CategoryItemModel *)categoryAtIndexPath:(NSIndexPath *)indexPath {
    return [self.categoryItems objectAtIndex:indexPath.row];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
    
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    ImageItemCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier: reuseIdentifier forIndexPath:indexPath];
    /*cell = [[CategoryCollectionViewCell alloc] initWithCategoryModel:categories[indexPath.row]];*/ // you cannot use init method for a view that is relaying on a xib / UI object, init will not attach the object with the cell, so it will cause a crash
    
    cell.item = [self.categoryItems objectAtIndex:indexPath.row];
    
    return [self setShadowsToCell:cell];
    
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.categoryItems.count;
    
}



- (void)setCategory:(CategoryModel *)category {
    
    _category = category;
    
}

- (ImageItemCollectionViewCell *)setShadowsToCell: (ImageItemCollectionViewCell *)cell{
    
    cell.contentView.layer.cornerRadius = 2.0f;
    cell.contentView.layer.borderWidth = 1.0f;
    cell.contentView.layer.borderColor = [UIColor clearColor].CGColor;
    cell.contentView.layer.masksToBounds = YES;
    
    cell.layer.shadowColor = [UIColor blackColor].CGColor;
    cell.layer.shadowOffset = CGSizeMake(0, 2.0f);
    cell.layer.shadowRadius = 2.0f;
    cell.layer.shadowOpacity = 0.5f;
    cell.layer.masksToBounds = NO;
    cell.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:cell.bounds cornerRadius:cell.contentView.layer.cornerRadius].CGPath;
    
    return cell;
}

@end
