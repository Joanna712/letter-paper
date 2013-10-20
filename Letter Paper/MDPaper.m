//
//  MDPaper.m
//  Letter Paper
//
//  Created by wys on 13-10-20.
//  Copyright (c) 2013年 Joanna & Blues. All rights reserved.
//

#import "MDPaper.h"
#import "MDTextView.h"

@interface MDPaper ()

@end

@implementation MDPaper

//@synthesize dicImages = _dicImages;
//@synthesize dicText = _dicText;
//@synthesize dicRecords = _dicRecords;
//@synthesize dicVideo = _dicVideo;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:DEFAULT_BACKGROUND_IMAGENAME]];
        MDTextView *textView = [[MDTextView alloc] init];
        [textView initWithFrame:CGRectMake(0, 0, frame.size.width, textView.font.lineHeight)];
        [self addSubview:textView];
        [textView release];
        
        // need to register paper to be the observer of MDTextView
    }
    return self;
}

- (void)insertImageWithName:(NSString *)strImageName
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(curPoint.x, curPoint.y, IMAGE_WIDTH, IMAGE_HEIGHT)];
    imageView.image = [UIImage imageNamed:strImageName];
    [self addSubview:imageView];
    [imageView release];
    
    //adjust all control's location
    for (UIView *view in self.subviews) {
        CGPoint point = view.frame.origin;
        if (point.y > curPoint.y) {
            CGRect rect = view.frame;
            rect.origin.y = point.y;
            view.frame = rect;
        }
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    curPoint = [touch locationInView:self];
    curPoint.x = MARGIN_LEFT;
}

@end
