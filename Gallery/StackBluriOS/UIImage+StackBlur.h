//
//  UIImage+StackBlur.h
//  Gallery
//
//  Created by Barış Güngör on 18.07.2019.
//  Copyright © 2019 Barış Güngör. All rights reserved.
//

#ifndef UIImage_StackBlur_h
#define UIImage_StackBlur_h

//
//  UIImage+StackBlur.h
//  stackBlur
//
//  Created by Thomas LANDSPURG on 07/02/12.
//  Copyright 2012 Digiwie. All rights reserved.
//
// StackBlur implementation on iOS
//
//

#import <Foundation/Foundation.h>

@interface UIImage (StackBlur)
- (UIImage*) stackBlur:(NSUInteger)radius;
- (UIImage *) normalize ;
+ (void) applyStackBlurToBuffer:(UInt8*)targetBuffer width:(const int)w height:(const int)h withRadius:(NSUInteger)inradius;
@end

#endif /* UIImage_StackBlur_h */
