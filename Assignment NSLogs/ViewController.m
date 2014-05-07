//
//  ViewController.m
//  Assignment NSLogs
//
//  Created by Michael Tirenin on 5/7/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)logButtonMessageToConsole:(UIButton *)sender;

- (IBAction)logSwitchMessageToConsole:(UISwitch *)sender;

- (IBAction)logSliderMessageToConsole:(UISlider *)sender;

- (IBAction)goToSecondView:(UIButton *)sender;

@end

@implementation ViewController

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

// Button logs a message to the console when it is tapped.
- (IBAction)logButtonMessageToConsole:(UIButton *)sender
{
    NSLog(@"Button was tapped.");
}

// Switch logs a message to the console when it is toggled.
- (IBAction)logSwitchMessageToConsole:(UISwitch *)sender
{
//    NSLog(@"Switch was toggled.");
    if ([sender isOn]) {
        NSLog(@"Switch was toggled on.");
    } else {
        NSLog(@"Switch was toggled off.");
    }
}

// Slider logs a message to the console with the current slider value,
// but only when the value is greater than 0.5.
- (IBAction)logSliderMessageToConsole:(UISlider *)sender
{
    if (sender.value > 0.5) {
        NSLog(@"Slider value is %f.", sender.value);
    }
}

// Challenge: Second button presents the 2nd view controller when tapped.
- (IBAction)goToSecondView:(UIButton *)sender
{
    NSLog(@"Next button was tapped, going to 2nd view.");
}

@end
