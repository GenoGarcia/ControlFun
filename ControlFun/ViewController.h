//
//  ViewController.h
//  ControlFun
//
//  Created by CISSAPP-13M on 5/18/15.
//  Copyright (c) 2015 Garcia. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController <UIActionSheetDelegate>

//Background Image
@property (strong, nonatomic) IBOutlet UIView *Background;

//Background Color
@property (strong, nonatomic) IBOutlet UIView *backgroundColor;

//Name & Number Text Fields
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *number;
- (IBAction)nameField:(id)sender;
- (IBAction)numField:(id)sender;
- (IBAction)textFieldDoneEditing:(id)sender;

//RGB Labels
@property (weak, nonatomic) IBOutlet UILabel *RLabel;
@property (weak, nonatomic) IBOutlet UILabel *GLabel;
@property (weak, nonatomic) IBOutlet UILabel *BLabel;

//RGB Sliders
@property (weak, nonatomic) IBOutlet UISlider *RSlider;
@property (weak, nonatomic) IBOutlet UISlider *GSlider;
@property (weak, nonatomic) IBOutlet UISlider *BSlider;
- (IBAction)sliderChanged:(id)sender;

//Segment Controller
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;

//Button
@property (weak, nonatomic) IBOutlet UIButton *doButton;
- (IBAction)Button:(id)sender;

//Switches
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
-(IBAction)switched:(UISwitch *)sender;
@end