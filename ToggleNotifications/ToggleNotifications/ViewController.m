//
//  ViewController.m
//  ToggleNotifications
//
//  Created by Swapnil on 1/29/15.
//  Copyright (c) 2015 CyberSams. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
{
    NSString* hasRegistered;
}

@property (nonatomic, weak) IBOutlet UISwitch* toggleSwitch;

- (void) setNotificationSwitch;
- (void) toggleNotifications: (UISwitch*) sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setNotificationSwitch];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Notification Switch

- (void) setNotificationSwitch {
    [self.toggleSwitch setOn:NO animated:NO];
 
    hasRegistered = [[NSUserDefaults standardUserDefaults] objectForKey:@"MyApp_Notifications"];
    
    if(hasRegistered)
    {
        if ([hasRegistered isEqualToString:@"SEND"]){
            [self.toggleSwitch setOn:YES animated:NO];
        }
    }
    
    [self.toggleSwitch addTarget:self action:@selector(toggleNotifications:) forControlEvents:UIControlEventValueChanged];
}


-(void) toggleNotifications: (UISwitch*) sender{
    
    AppDelegate* delegate = [UIApplication sharedApplication].delegate;
    
    if(sender.isOn){
        [delegate registerAppForNotifications];
    }else{
        [delegate unregisterAppForNotifications];
    }
}

@end
