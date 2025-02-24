//
//  NSAttributedString+DNPopupSupport.h
//  DNPopupController
//
//  Created by Léo Natan on 2021-09-19.
//  Copyright © 2015-2024 Léo Natan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSAttributedString (DNPopupSupport)

+ (instancetype)dn_attributedStringWithAttributedString:(NSAttributedString*)orig defaultAttributes:(nullable NSDictionary<NSAttributedStringKey, id>*)attribs;

@end

NS_ASSUME_NONNULL_END
