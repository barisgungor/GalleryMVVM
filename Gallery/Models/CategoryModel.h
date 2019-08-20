//
//  CategoryModel.h
//  Gallery
//
//  Created by Barış Güngör on 11.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#ifndef CategoryModel_h
#define CategoryModel_h
#import <JSONModel.h>
@interface CategoryModel : JSONModel

// all properties must be public, so use @property to define them in header class, you will understand better when you check jsonmodel library
@property (nonatomic) NSString *categoryId;
@property (nonatomic) NSString *categoryName;
@property (nonatomic) NSString *imageUrl;



@end

#endif /* CategoryModel_h */
