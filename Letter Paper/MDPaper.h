//
//  MDPaper.h
//  Letter Paper
//
//  Created by wys on 13-10-20.
//  Copyright (c) 2013年 Joanna & Blues. All rights reserved.
//

#import <UIKit/UIKit.h>

#define DEFAULT_BACKGROUND_IMAGENAME @"Default Background Image"
#define IMAGE_WIDTH 320
#define IMAGE_HEIGHT 160
#define MARGIN_LEFT 0
#define MARGIN_RIGHT 0

@interface MDPaper : UIScrollView
{
    CGPoint curPoint;
}

//@property (nonatomic,retain) NSMutableDictionary *dicImages;//value:imageName, key:location
//@property (nonatomic,retain) NSMutableDictionary *dicText;//value:text, key:location
//@property (nonatomic,retain) NSMutableDictionary *dicRecords;//value:fileName, key:location
//@property (nonatomic,retain) NSMutableDictionary *dicVideo;//value:fileName, key:location

- (void)insertImageWithName:(NSString *)strImageName;

@end
