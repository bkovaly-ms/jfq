//
//  ViewController.m
//  JeopardyFinalQ
//
//  Created by Brandon K on 8/4/15.
//  Copyright (c) 2015 bk. All rights reserved.
//

#import "ViewController.h"
#import <stdlib.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *randomizeButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.randomizeButton.backgroundColor = [UIColor whiteColor];
    self.randomizeButton.contentEdgeInsets = UIEdgeInsetsMake(10, 20, 10, 20);
    self.randomizeButton.layer.cornerRadius = 10;
    self.randomizeButton.layer.borderWidth = 1;
    self.randomizeButton.layer.borderColor = [UIColor blackColor].CGColor;
}

- (IBAction)randomizeButtonTapped:(id)sender
{
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0
                                                green:arc4random_uniform(255)/255.0
                                                 blue:arc4random_uniform(255)/255.0
                                                alpha:1.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
