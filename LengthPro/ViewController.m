//
//  ViewController.m
//  LengthPro
//
//  Created by New on 24/07/19.
//  Copyright © 2019 Personal. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <CoreMedia/CoreMedia.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL * videoURL = [NSURL URLWithString:@"http://techslides.com/demos/sample-videos/small.mp4"];
    AVURLAsset *avUrl = [AVURLAsset assetWithURL:videoURL];
    CMTime time = [avUrl duration];
    int seconds = ceil(time.value/time.timescale);
    NSLog(@"Video Duration = %i Seconds",seconds);
}


@end
