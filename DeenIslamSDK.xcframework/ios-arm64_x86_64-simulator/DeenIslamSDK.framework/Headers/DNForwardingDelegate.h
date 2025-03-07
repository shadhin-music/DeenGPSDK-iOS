//
//  DNForwardingDelegate.h
//  DNPopupController
//
//  Created by Léo Natan on 2017-07-15.
//  Copyright © 2015-2024 Léo Natan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DNForwardingDelegate : NSObject

@property (nonatomic, weak) id forwardedDelegate;

+ (BOOL)isCallerUIKit:(NSArray*)callStackReturnAddresses;

@end
