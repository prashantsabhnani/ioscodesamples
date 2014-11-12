//
//  XYZAddContactViewController.m
//  ContactBook
//
//  Created by Prashant Sabhnani on 11/11/14.
//
//

#import "XYZAddContactViewController.h"

@interface XYZAddContactViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *contactNumberTextField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation XYZAddContactViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton) return;
    if (self.firstNameTextField.text.length > 0) {
        self.addContactItem = [[XYZContactItem alloc] init];
        self.addContactItem.firstName = self.firstNameTextField.text;
        
        if (self.lastNameTextField.text.length > 0) {
        self.addContactItem.lastName = self.lastNameTextField.text;
        }
        else{
            self.addContactItem.lastName = @"";
        }
        
        if (self.contactNumberTextField.text.length > 0) {
            self.addContactItem.contactNumber = self.contactNumberTextField.text;
        }
        else{
            self.addContactItem.contactNumber = @"";
        }
    }
}


@end
