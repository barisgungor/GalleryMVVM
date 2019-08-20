//
//  CategoryCollectionViewController.m
//  Gallery
//
//  Created by Barış Güngör on 16.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#import "CategoryCollectionViewController.h"
#import "ImageItemCollectionViewCell.h"
#import "CategoryCollectionViewDataSource.h"
#import "PreviewViewController.h"
#import "JGProgressHUD.h"
#import <UIKit/UIKit.h>

@interface CategoryCollectionViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *categoryViewCollection;
@property (nonatomic) IBOutlet CategoryCollectionViewDataSource *dataSource;
@property (weak, nonatomic) IBOutlet UILabel *pageTitle;

@end

@implementation CategoryCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pageTitle.text = _category.categoryName;
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    CategoryItemModel *item = [self.dataSource categoryAtIndexPath:indexPath];
    
    PreviewViewController *previewVC = [self.storyboard instantiateViewControllerWithIdentifier:@"PreviewViewController"];
    previewVC.item = item;
    [self presentViewController:previewVC animated:YES completion:nil];
    
    NSLog(@"%@", item);
//    [self performSegueWithIdentifier:@"showPreviewViewControllerFromCategoryCollectionViewController" sender:item];
    
}

- (IBAction)backButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
//    if([segue.identifier isEqualToString:@"showPreviewViewControllerFromCategoryCollectionViewController"]){
//
//        PreviewViewController *infoVcDataSource = (PreviewViewController *)
//        segue.destinationViewController;
//        infoVcDataSource.item = sender;
//
//    }
}


@end
