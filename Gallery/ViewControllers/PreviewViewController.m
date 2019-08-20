//
//  PreviewViewController.m
//  Gallery
//
//  Created by Barış Güngör on 16.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#import "PreviewViewController.h"
#import "UIImage+StackBlur.h"
#import "CategoryCollectionViewController.h"
#import <UIKit/UIKit.h>
#import "JGProgressHUD.h"
@interface PreviewViewController ()


@property (weak, nonatomic) IBOutlet UIImageView *blurreyBackgroundImageView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *itemLabel;
@property (weak, nonatomic) IBOutlet UIButton *saveImageButton;

@end

@implementation PreviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.itemLabel.text = _item.categoryItemName;
    [self.imageView setImageWithURL:[NSURL URLWithString: _item.imageItemUrl]];
    [self.blurreyBackgroundImageView setImageWithURL:[NSURL URLWithString: _item.imageItemUrl]];
//    [self blurBackground]; //this method slows down the process
  //  [self.imageView setImage:[self blurImage]];
  //  self.imageView =[[UIImageView alloc] initWithImage: test];
}

- (void)blurBackground{
    
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString: _item.imageItemUrl]]; //loading images through NSData slows down loading time
    UIImage *image = [UIImage imageWithData:data];
    image = [image stackBlur: 80];
    
    [self.blurreyBackgroundImageView setImage:image];
    
}


 - (void)saveImageToGallery{
    
     NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString: _item.imageItemUrl]];
     UIImage *image = [UIImage imageWithData:data];
     UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    
}

- (void) image:(UIImage*)image didFinishSavingWithError:(NSError *)error contextInfo:(NSDictionary*)info{
    
    JGProgressHUD *HUD = [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
    HUD.textLabel.text = @"Downloading...";
    [HUD showInView:self.view];
    
    if(!error){
        
        NSLog(@"WORKED");
       
        [HUD dismissAfterDelay:1.0];
        
    }else {
        
        NSLog(@"NOT WORKED");
        
    }
    
}

- (IBAction)backAction:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}






- (IBAction)saveImageAction:(id)sender {
    
    [self saveImageToGallery];
    
}


@end
