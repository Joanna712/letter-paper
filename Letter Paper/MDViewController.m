//
//  MDViewController.m
//  Letter Paper
//
//  Created by wys on 13-10-20.
//  Copyright (c) 2013年 Joanna & Blues. All rights reserved.
//

#import "MDViewController.h"

@interface MDViewController ()

@end

@implementation MDViewController

@synthesize textView = _textView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.textView.delegate = self.textView;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
