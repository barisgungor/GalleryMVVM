//
//  PreviewViewController.h
//  Gallery
//
//  Created by Barış Güngör on 16.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryItemModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PreviewViewController : UIViewController

@property (nonatomic) CategoryItemModel *item;

@end

NS_ASSUME_NONNULL_END
