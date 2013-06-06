//
//  FFViewController.m
//  moviePlayer
//
//  Created by liu on 6/6/13.
//  Copyright (c) 2013 liu. All rights reserved.
//

#import "FFViewController.h"
#import "MyStreamingMovieViewController.H"
#import "MyMovieViewController.h"

@interface FFViewController ()

@end

@implementation FFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self initTheButton:@"start" action:@selector(pushOn) parentObject:self.view];
    
}

- (void)pushOn{
    NSLog(@"-========>");
    
//    MyStreamingMovieViewController *userRegister = [[MyStreamingMovieViewController alloc]initWithNibName:@"SecondView" bundle:nil];
//    userRegister.title = @"用户注册";
//    
//    [self.navigationController pushViewController:userRegister animated:YES];
    
    MyMovieViewController *myMVC = [[MyMovieViewController alloc] init];
    
    NSURL *theMovieURL = [NSURL URLWithString:@"http://firefrog-wordpress.stor.sinaapp.com/uploads/2013/06/20130605151507.mp3"];
    
    [myMVC playMovieStream:theMovieURL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {

    [super viewDidUnload];
}


#pragma mark INIT BUTTON
//init the button
-(void)initTheButton:(NSString *)title action:(SEL)
actionName parentObject:(id)parentOb
{
    
    UIButton *ButtonCircle = [UIButton buttonWithType:UIButtonTypeCustom];
    ButtonCircle.frame = CGRectMake(85, 150, 140, 35);
    ButtonCircle.backgroundColor = [UIColor clearColor];
    //title
    [ButtonCircle setTitle:title forState:UIControlStateNormal];
    ButtonCircle.titleLabel.font = [UIFont boldSystemFontOfSize: 18];
    [ButtonCircle setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    //image
    [ButtonCircle setBackgroundImage:[UIImage imageNamed:@"sf_setting_btn_up.png"] forState:UIControlStateNormal];
    [ButtonCircle setBackgroundImage:[UIImage imageNamed:@"sf_setting_btn_down.png"] forState:UIControlStateHighlighted];
    //action
    [ButtonCircle addTarget:self action:actionName forControlEvents:UIControlEventTouchDown];
    [parentOb addSubview: ButtonCircle];
    
}

@end
