//
//  MDTextView.m
//  Letter Paper
//
//  Created by wys on 13-10-20.
//  Copyright (c) 2013年 Joanna & Blues. All rights reserved.
//

#import "MDTextView.h"

@implementation MDTextView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.scrollEnabled = NO;
        self.delegate = self;
    }
    return self;
}

- (void)textViewDidChange:(UITextView *)textView
{
    CGSize size = self.contentSize;
    CGRect rect = self.frame;//NSLog(@"size: %@, frame: %@", NSStringFromCGSize(size), NSStringFromCGRect(rect));
//    if (size.height > rect.size.height) {
//        
//    }
    rect.size.height = size.height;
    self.frame = rect;
}

@end
