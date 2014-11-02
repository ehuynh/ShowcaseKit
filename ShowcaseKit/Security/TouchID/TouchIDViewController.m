//
//  TouchIDViewController.m
//  ShowcaseKit
//
//  Created by Edward Huynh on 2/11/2014.
//  Copyright (c) 2014 Edward Huynh. All rights reserved.
//

#import "TouchIDViewController.h"

@import LocalAuthentication;

@interface TouchIDViewController ()

@end

@implementation TouchIDViewController

- (IBAction)authenticateBtnTapped:(id)sender
{
    [self authenticateWithTouchID];
}

- (void)authenticateWithTouchID
{
    LAContext *laContext = [LAContext new];
    
    NSError *error = nil;
    
    if ([laContext canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {
        [laContext evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics localizedReason:@"Lets test your finger print" reply:^(BOOL success, NSError *error) {
            
            NSString *alertTitle = nil;
            NSString *alertMessage = nil;
            
            if (success) {
                alertTitle = @"Success";
                alertMessage = @"It worked";
            }
            else if (error) {
                switch (error.code) {
                    case LAErrorUserFallback:
                        alertTitle = @"Cancelled";
                        alertMessage = @"Fallback to another auth mechanism";
                        break;
                    case LAErrorUserCancel:
                        // User tapped cancelled
                        break;
                    default:
                        alertTitle = @"Error";
                        alertMessage = @"Error reading finger print";
                        break;
                }
            }
            else {
                alertTitle = @"Failed";
                alertMessage = @"Finger print doesn't match";
            }

            if (alertTitle || alertMessage) {
                [self showTitle:alertTitle andMessage:alertMessage];
            }
        }];
    }
    else {
        [self showTitle:@"Error" andMessage:@"Touch ID is not setup"];
    }
    
}

- (void)showTitle:(NSString *)title andMessage:(NSString *)message
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [alertController dismissViewControllerAnimated:YES completion:nil];
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
