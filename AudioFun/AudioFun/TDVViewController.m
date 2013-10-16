//
//  TDVViewController.m
//  AudioFun
//
//  Created by John Yeh on 10/16/13.
//  Copyright (c) 2013 Tribune Digital Ventures. All rights reserved.
//

#import "TDVViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface TDVViewController ()

@property (nonatomic, strong, readwrite) AVAudioPlayer *audioPlayer1;
@property (nonatomic, strong, readwrite) AVAudioPlayer *audioPlayer2;
@property (nonatomic, strong, readwrite) AVAudioPlayer *audioPlayer3;

@end

@implementation TDVViewController

@synthesize audioPlayer1 = _audioPlayer1;
@synthesize audioPlayer2 = _audioPlayer2;
@synthesize audioPlayer3 = _audioPlayer3;

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

- (IBAction)playOneAudio:(id)sender
{
    NSString *path = @"/Users/jyeh/Dev/tem/tdv/AppTip.mp3";
    
    NSError *error = nil;
    _audioPlayer1 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:&error];
    
    if (_audioPlayer1 && error == nil) {
        [_audioPlayer1 play];
    } else  { // well, something must be wrong
        NSLog(@"AudioPlay error: %@", error);
    }
}

- (IBAction)playTwoAudios:(id)sender
{
    NSString *path1 = @"/Users/jyeh/Dev/tem/tdv/InBusinessMale.mp3";
    NSString *path2 = @"/Users/jyeh/Dev/tem/tdv/InEntertainmentFemale.mp3";
    
    NSError *error1 = nil;
    _audioPlayer1 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path1] error:&error1];
    [_audioPlayer1 setVolume:1.0];
    
    NSError *error2 = nil;
    _audioPlayer2 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path2] error:&error2];
    [_audioPlayer2 setVolume:0.2];

    if (_audioPlayer1 && error1 == nil) {
        [_audioPlayer1 play];
    } else  { // well, something must be wrong
        NSLog(@"AudioPlay error: %@", error1);
    }

    if (_audioPlayer2 && error2 == nil) {
        [_audioPlayer2 play];
    } else  { // well, something must be wrong
        NSLog(@"AudioPlay error: %@", error2);
    }

}

- (IBAction)playMutipleAudios:(id)sender
{
    NSString *path1 = @"/Users/jyeh/Dev/tem/tdv/AppTip.mp3";
    NSString *path2 = @"/Users/jyeh/Dev/tem/tdv/InEntertainmentFemale.mp3";
    NSString *path3 = @"/Users/jyeh/Dev/tem/tdv/InNationalFemale.mp3";
    
    NSError *error1 = nil;
    _audioPlayer1 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path1] error:&error1];
    [_audioPlayer1 setVolume:0.1];
    
    NSError *error2 = nil;
    _audioPlayer2 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path2] error:&error2];
    [_audioPlayer2 setVolume:1.0];
    
    NSError *error3 = nil;
    _audioPlayer3 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path3] error:&error3];
    [_audioPlayer3 setVolume:0.8];
    
    if (_audioPlayer1 && error1 == nil) {
        [_audioPlayer1 play];
    } else  { // well, something must be wrong
        NSLog(@"AudioPlay error: %@", error1);
    }
    
    if (_audioPlayer2 && error2 == nil) {
        [_audioPlayer2 play];
    } else  { // well, something must be wrong
        NSLog(@"AudioPlay error: %@", error2);
    }
    
    if (_audioPlayer3 && error3 == nil) {
        [_audioPlayer3 play];
    } else  { // well, something must be wrong
        NSLog(@"AudioPlay error: %@", error3);
    }
}

@end
