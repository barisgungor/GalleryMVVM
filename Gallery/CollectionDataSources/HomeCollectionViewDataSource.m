//
//  HomeCollectionViewDataSource.m
//  Gallery
//
//  Created by Barış Güngör on 12.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HomeCollectionViewDataSource.h"
#import "CategoryModel.h"
#import "CategoryCollectionViewCell.h"

@interface HomeCollectionViewDataSource ()

@property (nonatomic) NSArray <CategoryModel *> *categories;
//@property (nonatomic) UICollectionView *collectionView;

@end

@implementation HomeCollectionViewDataSource

static  NSString * const reuseIdentifier = @"Cell";

#pragma mark - Public

- (instancetype)init {
    
    self = [super init];
    if (self) {
        NSError *error;
        
        CategoryModel * testModel = [[CategoryModel alloc] initWithDictionary:@{@"categoryId" : @"1", @"categoryName":@"Furniture", @"imageUrl": @"https://res-5.cloudinary.com/dwpujv6in/image/upload/c_pad,dpr_2.0,f_auto,h_930,q_auto,w_930/v1/media/catalog/product/f/d/fd1_lngchr_bh_frontlow-field-lounge-chair-tait-blush.jpg"} error:&error];
        
        CategoryModel * testModel2 = [[CategoryModel alloc] initWithDictionary:@{@"categoryId" : @"2", @"categoryName":@"Nature", @"imageUrl": @"https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"} error:&error];
        
        self.categories = @[testModel, testModel2];
        
    }
    return self;
}

//we don't define this method ( getter method ) except if we will change the object before returning it, but as long as we will not, then we just keep it in the property
//- (UICollectionView *)collectionView{
//    return _collectionView;
//}

- (CategoryModel *)categoryAtIndexPath:(NSIndexPath *)indexPath {
    return [self.categories objectAtIndex:indexPath.row];
}

#pragma mark - Private

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
    
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    CategoryCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier: reuseIdentifier forIndexPath:indexPath];
    /*cell = [[CategoryCollectionViewCell alloc] initWithCategoryModel:categories[indexPath.row]];*/ // you cannot use init method for a view that is relaying on a xib / UI object, init will not attach the object with the cell, so it will cause a crash
    
    cell.category = [self.categories objectAtIndex:indexPath.row];
    
    return cell;
    
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.categories.count;
}


@end

