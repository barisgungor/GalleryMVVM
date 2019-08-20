//
//  ViewController.m
//  Gallery
//
//  Created by Barış Güngör on 11.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#import "HomeCollectionViewController.h"
#import "CategoryCollectionViewCell.h"
#import "HomeCollectionViewDataSource.h"
#import "CategoryCollectionViewDataSource.h"
#import "CategoryCollectionViewController.h"
#import "JGProgressHUD.h"
#import <UIKit/UIKit.h>


@interface HomeCollectionViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *homeViewCollection;
@property (nonatomic) IBOutlet HomeCollectionViewDataSource *dataSource;

@end

@implementation HomeCollectionViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
   
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    CategoryModel *category = [((HomeCollectionViewDataSource *)self.homeViewCollection.dataSource) categoryAtIndexPath:indexPath];
    NSLog(@"%@", category);
     [self performSegueWithIdentifier:@"showCategoryCollectionViewControllerFromHomeCollectionViewController" sender:category];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"showCategoryCollectionViewControllerFromHomeCollectionViewController"]){
        
        CategoryCollectionViewDataSource *infoVcDataSource = (CategoryCollectionViewDataSource *)
        segue.destinationViewController;
        infoVcDataSource.category = sender;
        CategoryCollectionViewController *infoVcViewController = (CategoryCollectionViewController *)
        segue.destinationViewController;
        infoVcViewController.category = sender;
        
    }
}

/*- (CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    return CGSizeMake(150, 200);
}*/


@end
