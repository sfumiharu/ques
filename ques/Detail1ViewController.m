//
//  Detail1ViewController.m
//  ques
//
//  Created by fumiharu on 2014/04/29.
//
//

#import "Detail1ViewController.h"

@interface Detail1ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *label;
@end

@implementation Detail1ViewController

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

    _label.text = @"text will be changed";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
