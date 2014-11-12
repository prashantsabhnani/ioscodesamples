//
//  XYZContactsListTableViewController.m
//  ContactBook
//
//  Created by Prashant Sabhnani on 11/11/14.
//
//

#import "XYZContactsListTableViewController.h"
#import "XYZContactItem.h"
#import "XYZAddContactViewController.h"
#import "XYZViewContactViewController.h"

@interface XYZContactsListTableViewController ()

@end

@implementation XYZContactsListTableViewController

- (void)loadInitialData {
    XYZContactItem *item1 = [[XYZContactItem alloc] init];
    item1.firstName = @"John";
    item1.lastName = @"Doe";
    item1.contactNumber = @"925-673-5549";
    [self.contactItems addObject:item1];
    XYZContactItem *item2 = [[XYZContactItem alloc] init];
    item2.firstName = @"Jeanne";
    item2.lastName = @"Doe";
    item2.contactNumber = @"206-673-5549";
    [self.contactItems addObject:item2];
    XYZContactItem *item3 = [[XYZContactItem alloc] init];
    item3.firstName = @"Christiano";
    item3.lastName = @"Ronaldo";
    item3.contactNumber = @"425-999-3320";
    [self.contactItems addObject:item3];
   
}

- (IBAction)unwindToList:(UIStoryboardSegue *)segue
{
    XYZAddContactViewController *source = [segue sourceViewController];
    XYZContactItem *item = source.addContactItem;
    
    if (item != nil) {
        [self.contactItems addObject:item];
        [self.tableView reloadData];
    }
}

- (IBAction)backToList:(UIStoryboardSegue *)segue
{
    
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.contactItems = [[NSMutableArray alloc] init];
    [self loadInitialData];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.contactItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    
    XYZContactItem *aContactItem = [self.contactItems objectAtIndex:indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", aContactItem.firstName, aContactItem.lastName];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"ViewContactSegue"])
    {
       XYZViewContactViewController *targetViewController = [segue destinationViewController];
       targetViewController.viewContactItem = self.viewContactItem;
    }
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.viewContactItem = [self.contactItems objectAtIndex:indexPath.row];
    //execute segue programmatically
    [self performSegueWithIdentifier: @"ViewContactSegue" sender: self];
}

@end
