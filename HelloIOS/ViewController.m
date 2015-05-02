//
//  ViewController.m
//  HelloIOS
//
//  Created by JOEL DSOUZA on 11/3/13.
//  Copyright (c) 2013 JOEL DSOUZA. All rights reserved.
//  testing git commits.

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad
{
    
	// Do any additional setup after loading the view, typically from a nib.
    NSString *fullUrl = @"http://sapt.azurewebsites.net/index.html";
    NSURL *url = [NSURL URLWithString:fullUrl];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:requestObj];
    self.webView.scrollView.scrollEnabled = TRUE;
    self.view.autoresizesSubviews=TRUE;
    
    [super viewDidLoad];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"webviewDidFinished");
    if (self.webView)
        [self.webView stringByEvaluatingJavaScriptFromString: @"testing();"];
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    
    NSLog(@"Error for WEBVIEW: %@", [error description]);
}


-(BOOL)shouldAutomaticallyForwardRotationMethods{
    return YES;
}

-(BOOL)shouldAutorotate {
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
    
}

- (IBAction)buttonLog:(id)sender {
    NSLog(@"button clicked");
    NSString *jsFunctionCall = @"getSum(3);";
    NSString *jsReturn = [self.webView stringByEvaluatingJavaScriptFromString:jsFunctionCall];
    NSLog(@"%@",jsReturn);
}

- (IBAction)buttonIframe:(id)sender {
    NSLog(@"iframe button clicked");
    NSString *jsFunctionCall = @"testing();";
    NSString *jsReturn = [self.webView stringByEvaluatingJavaScriptFromString:jsFunctionCall];
    //NSString *jsFunctionIframe = @"loadIframe('http://www.google.com/');";
    //NSString *jsReturn = [self.webView stringByEvaluatingJavaScriptFromString:jsFunctionIframe];
}

- (BOOL)webView:(UIWebView *)webView2 shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {

    NSString *requestString = [[request URL] absoluteString];
    
    NSLog(@"request : %@",requestString);
    
    return NO;
    
}

@end
