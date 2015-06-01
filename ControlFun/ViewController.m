//
//  ViewController.m
//  ControlFun
//
//  Created by CISSAPP-13M on 5/18/15.
//  Copyright (c) 2015 Garcia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.RLabel.text = @"128";
    self.GLabel.text = @"128";
    self.BLabel.text = @"128";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nameField:(id)sender {
    
}

- (IBAction)numField:(id)sender {
    
}

- (IBAction)textFieldDoneEditing: (id) sender {
    [sender resignFirstResponder];
}

//tap background to exit keyboard.
- (IBAction)backgroundTap:(id)sender {
    [self.name resignFirstResponder];
    [self.number resignFirstResponder];

}

CGFloat red = 128.0, green = 128.0, blue = 128.0;

//Slider change handlers.
- (IBAction)sliderChanged:(UISlider *)sender {
    
    float progress = sender.value;
    
    if (sender == _RSlider) {
        self.RLabel.text = [NSString stringWithFormat:@"%5.1f", progress];
        red = progress;
    } else if (sender == _GSlider){
        self.GLabel.text = [NSString stringWithFormat:@"%5.1f", progress];
        green = progress;
    } else if (sender == _BSlider) {
        self.BLabel.text = [NSString stringWithFormat:@"%5.1f", progress];
        blue = progress;
    }
    self.backgroundColor.backgroundColor = [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:1.0f];
}

//Segment Handler.
-(IBAction)segmentChanged:(id)sender {
    switch(_segment.selectedSegmentIndex) {
        case 0:
            [_doButton setHidden: YES];
            [_rightSwitch setHidden: NO];
            [_leftSwitch setHidden: NO];
            break;
        case 1:
            [_doButton setHidden: NO];
            [_rightSwitch setHidden: YES];
            [_leftSwitch setHidden: YES];
            break;
    }
}

-(IBAction)switched:(UISwitch *)sender {
    BOOL status = sender.isOn;
    
    [self.leftSwitch setOn:status animated: YES];
    [self.rightSwitch setOn:status animated: YES];
}

- (IBAction)Button:(id)sender {
    
}

//Page Orientation Handler
-(NSUInteger) supportedInterfaceOrientations {
    return (UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight | UIInterfaceOrientationMaskPortraitUpsideDown);
}

//- (void)willAnimateRotationToInterfaceOrientation: (UIInterfaceOrientation) toInterfaceOrientation duration: (NSTimeInterval)duration {
//    [self doLayoutForOrientation: toInterfaceOrientation];
//}

//-(void) doLayoutForOrientation: (UIInterfaceOrientation) {
//    if (UIInterfaceOrientationIsPortrait(orientation)) {
//        [self layoutPortrait];
//    }else{
//        [self layoutLandscape];
//    }
//}
@end