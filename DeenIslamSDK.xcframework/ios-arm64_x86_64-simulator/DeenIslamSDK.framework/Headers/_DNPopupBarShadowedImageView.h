//
//  _dNPopupBarShadowedImageView.h
//  DNPopupController
//
//  Created by Léo Natan on 2023-09-25.
//  Copyright © 2015-2024 Léo Natan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface _DNPopupBarShadowedImageView : UIImageView

@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, copy) NSShadow* shadow;

@end

NS_ASSUME_NONNULL_END
