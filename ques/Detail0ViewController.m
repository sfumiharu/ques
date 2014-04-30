//
//  Detail0ViewController.m
//  ques
//
//  Created by fumiharu on 2014/04/29.
//
//

#import "Detail0ViewController.h"

@interface Detail0ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textfield;
@property (strong, nonatomic) IBOutlet UIImageView *lionView;
- (IBAction)showAlert:(id)sender;

@end

@implementation Detail0ViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert:(id)sender {
    if ([_textfield.text isEqualToString:@"lion"]) {
        UIAlertView *av = [[UIAlertView alloc]initWithTitle:@"show alert"
                                                    message:@"add imageView"
                                                   delegate:self
                                          cancelButtonTitle:@"NO"
                                          otherButtonTitles:@"YES", nil];
        [av show];
    }
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            break;
        case 1:
            _lionView.hidden = NO;
            [self.view endEditing:YES];
            break;
    }
}
@end
