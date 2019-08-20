//
//  CategoryItemModel.h
//  Gallery
//
//  Created by Barış Güngör on 11.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#ifndef CategoryItemModel_h
#define CategoryItemModel_h
#import <JSONModel.h>

@interface CategoryItemModel : JSONModel

@property (nonatomic) NSString *categoryItemId;
@property (nonatomic) NSString *categoryItemName;
@property (nonatomic) NSString *imageItemUrl;

@end

#endif /* CategoryItemModel_h */
