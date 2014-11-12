//
//  XYZViewContactViewController.m
//  ContactBook
//
//  Created by Prashant Sabhnani on 11/11/14.
//
//

#import "XYZViewContactViewController.h"
#import "XYZAddContactViewController.h"

@interface XYZViewContactViewController ()
@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *contactNumberLabel;

@end

@implementation XYZViewContactViewController

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
    if(self.viewContactItem)
    {
        self.firstNameLabel.text = self.viewContactItem.firstName;
        self.lastNameLabel.text = self.viewContactItem.lastName;
        self.contactNumberLabel.text = self.viewContactItem.contactNumber;
    }
    
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
}

@end
