//
// TSMessageContentView.h
//
//  Created by Vitalii Bogdan on 28/10/2015 .
//  Copyright (c) 2015. All rights reserved.

#import <UIKit/UIKit.h>

@interface TSMessageContentView : UIView

@property (nonatomic, readonly) UILabel * contentLabel;

@property (nonatomic,strong) UIFont * contentFont;
@property (nonatomic,strong) UIColor * contentTextColor;
@property (nonatomic,strong) NSString * text;

@end