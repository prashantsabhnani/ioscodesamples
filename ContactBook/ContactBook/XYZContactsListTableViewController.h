//
//  XYZContactsListTableViewController.h
//  ContactBook
//
//  Created by Prashant Sabhnani on 11/11/14.
//
//

#import <UIKit/UIKit.h>
#import "XYZContactItem.h"

@interface XYZContactsListTableViewController : UITableViewController

@property NSMutableArray *contactItems;
@property XYZContactItem *viewContactItem;

- (IBAction)unwindToList:(UIStoryboardSegue *)segue;
- (IBAction)backToList:(UIStoryboardSegue *)segue;

@end
