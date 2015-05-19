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

- (IBAction)backgroundTap:(id)sender {
    [self.name resignFirstResponder];
    [self.number resignFirstResponder];
}

- (IBAction)RSlider:(id)sender {

}

- (IBAction)GSlider:(id)sender {

}

- (IBAction)BSlider:(id)sender {

}

- (IBAction)Button:(id)sender {

}

- (IBAction)sliderChanged:(id)sender {

}

-(IBAction)switchChanged:(id)sender {

}
@end
