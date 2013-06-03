//
//  FFViewController.h
//  playMusic
//
//  Created by liu on 6/1/13.
//  Copyright (c) 2013 liu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AudioPlayer;

@interface FFViewController : UIViewController{

    AudioPlayer *_audioPlayer;
}
- (IBAction)clickOnButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *musicPlayBut;
@end
