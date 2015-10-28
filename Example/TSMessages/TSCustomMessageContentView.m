//
// TSCustomMessageContentView.m
//
//  Created by Vitalii Bogdan on 28/10/2015 .
//  Copyright (c) 2015. All rights reserved.

#import "TSCustomMessageContentView.h"

@interface TSCustomMessageContentView ()

@end

@implementation TSCustomMessageContentView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if ( self ) {
        self.button = ({
            UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
            [button setTitle:@"Custom Button" forState:UIControlStateNormal];
            button;
        });
        [self addSubview:self.button];
    }
    return self;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    [self.button sizeToFit];

    CGSize size = [self.contentLabel sizeThatFits:CGSizeMake(self.frame.size.width, FLT_MAX)];
    self.contentLabel.frame = CGRectMake(0, 0, size.width, size.height);

    self.button.backgroundColor = [UIColor greenColor];
    self.contentLabel.backgroundColor = [UIColor blueColor];
    self.button.frame = CGRectMake(0, self.contentLabel.frame.origin.y + self.contentLabel.frame.size.height, self.button.frame.size.width, self.button.frame.size.height);
}


- (void)sizeToFit {
    [super sizeToFit];

    CGSize size = [self.contentLabel sizeThatFits:CGSizeMake(self.frame.size.width, FLT_MAX)];
    self.contentLabel.frame = CGRectMake(0, 0, size.width, size.height);
    [self.button sizeToFit];
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.contentLabel.frame.size.width, self.contentLabel.frame.size.height + self.button.frame.size.height);

}


@end