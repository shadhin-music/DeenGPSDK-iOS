//
//  _DNPopupUIBarAppearanceProxy.h
//  DNPopupController
//
//  Created by Léo Natan on 2023-08-30.
//  Copyright © 2015-2024 Léo Natan. All rights reserved.
//

#import <Foundation/Foundation.h>

#if ! DNPopupControllerEnforceStrictClean

NS_ASSUME_NONNULL_BEGIN

@interface _DNPopupUIBarAppearanceProxy : NSObject

- (instancetype)initWithProxiedObject:(id)obj shadowColorHandler:(BOOL(^)(void))shadowColorHandler;

@end

NS_ASSUME_NONNULL_END

#endif
