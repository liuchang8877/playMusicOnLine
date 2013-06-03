//
//  FFViewController.m
//  playMusic
//
//  Created by liu on 6/1/13.
//  Copyright (c) 2013 liu. All rights reserved.
//

#import "FFViewController.h"
#import "AudioPlayer.h"

@interface FFViewController ()

@end

@implementation FFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickOnButton:(id)sender {
    //播放音乐
    
    if (_audioPlayer == nil) {
        _audioPlayer = [[AudioPlayer alloc] init];
    }
    
    _audioPlayer.url = [NSURL URLWithString:@"http://firefrog-wordpress.stor.sinaapp.com/uploads/2013/05/1.mp3"];
    
    [_audioPlayer play];
}
@end
