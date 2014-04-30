//
//  Detail2ViewController.m
//  ques
//
//  Created by fumiharu on 2014/04/30.
//
//

#import "Detail2ViewController.h"

@interface Detail2ViewController ()
@property (strong, nonatomic) IBOutlet UIWebView *webview;
@end

@implementation Detail2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [_webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://www.google.com"]]]];
    [_webview setAccessibilityLabel:@"webview"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
