//
// TSMessageContentView.m
//
//  Created by Vitalii Bogdan on 28/10/2015 .
//  Copyright (c) 2015. All rights reserved.

#import "TSMessageContentView.h"

@interface TSMessageContentView ()

@end

@implementation TSMessageContentView {
    UILabel * _contentLabel;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if ( self ) {
        _contentLabel = [UILabel new];
        _contentLabel.numberOfLines = 0;
        [self addSubview:_contentLabel];
    }
    return self;
}


- (UILabel *)contentLabel {
    return _contentLabel;
}

- (void)setText:(NSString *)text {
    self.contentLabel.text = text;
}


- (NSString *)text {
    return self.contentLabel.text;
}


- (void)setContentFont:(UIFont *)font {
    self.contentLabel.font = font;
}


- (UIFont *)contentFont {
    return self.contentLabel.font;
}


- (void)setContentTextColor:(UIColor *)color {
    self.contentLabel.textColor = color;
}


- (UIColor *)contentTextColor {
    return self.contentLabel.textColor;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    self.contentLabel.frame = self.bounds;
}


- (void)sizeToFit {
    [super sizeToFit];

    self.contentLabel.frame = self.bounds;
    [self.contentLabel sizeToFit];
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.contentLabel.frame.size.width, self.contentLabel.frame.size.height);
}
@end