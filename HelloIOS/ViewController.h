//
//  ViewController.h
//  HelloIOS
//
//  Created by JOEL DSOUZA on 11/3/13.
//  Copyright (c) 2013 JOEL DSOUZA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)buttonLog:(id)sender;
- (IBAction)buttonIframe:(id)sender;

@end
