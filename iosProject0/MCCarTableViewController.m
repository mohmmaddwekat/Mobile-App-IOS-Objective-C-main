//
//  MCCarTableViewController.m
//  iosProject0
//
//  Created by Student on 4/29/21.
//

#import "MCCarTableViewController.h"

@interface MCCarTableViewController (){
}
@end

@implementation MCCarTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

    -(void)viewWillAppear:(BOOL)animated{
        [super viewWillAppear:animated];


        
//    self.AutomobileAray =[NSMutableArray new];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    NSInteger numOfSections = 0;
    if (_AutomobileAray.count > 0)
    {
        tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        numOfSections                = 1;
        tableView.backgroundView = nil;
    }
    else
    {
        UILabel *noDataLabel         = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, tableView.bounds.size.height)];
        noDataLabel.text             = @"No data available";
        noDataLabel.textColor        = [UIColor blackColor];
        [noDataLabel setFont:[UIFont systemFontOfSize:30] ];
        noDataLabel.numberOfLines=0;
        noDataLabel.textAlignment    = NSTextAlignmentCenter;
        tableView.backgroundView = noDataLabel;
        tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }

    return numOfSections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    return self.AutomobileAray.count;
    
}
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(editingStyle ==UITableViewCellEditingStyleDelete){
        [_AutomobileAray removeObjectAtIndex:indexPath.row];
        [[self tableView]reloadData];

    }
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MCAutomobileCellTableViewCell *cell = (MCAutomobileCellTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    
    
    [[cell customCellTitleLabel] setText:[NSString stringWithFormat:@"%@ %@",[self.AutomobileAray[indexPath.row]manufactureCompany] ,[self.AutomobileAray[indexPath.row]model]]];
    
    if([[self.AutomobileAray objectAtIndex:indexPath.row] isKindOfClass:[MCCar class]]){
        [[cell customCellDetailsLabel] setText:@"Car"];
    }else if([[self.AutomobileAray objectAtIndex:indexPath.row] isKindOfClass:[MCTruck class]]){
        [[cell customCellDetailsLabel] setText:@"Truck"];
    }else if([[self.AutomobileAray objectAtIndex:indexPath.row] isKindOfClass:[MCMotorcycle class]]){
        [[cell customCellDetailsLabel] setText:@"Motorcycle"];

    }
    

    
    // Configure the cell...
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}





/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


- (void)send:(id)data index:(NSInteger)index{
    
    [self.AutomobileAray  replaceObjectAtIndex:index withObject:data];
    
    [[self tableView]reloadData];

    

}
- (void)send:(id)data{
    if (data != nil) {
        if(self.AutomobileAray==nil){
        self.AutomobileAray =[NSMutableArray new];
        }
        
        [self.AutomobileAray addObject:data];
        
        [[self tableView]reloadData];
    }

}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
        

    id addAndDetails=[segue destinationViewController];

    if ([addAndDetails isKindOfClass:[MCChoicekindAutomobile class]]){
        MCChoicekindAutomobile *addData=[segue destinationViewController];
        addData.addAutomobileDelegate=self;
    }
    else if ([addAndDetails isKindOfClass:[MCDetailsViewController class]]){
        MCDetailsViewController *carDetails=[segue destinationViewController];
        carDetails.editAutomobileDelegate=self;
        NSIndexPath *slectedIndexPath=[self.tableView indexPathForSelectedRow];
        [carDetails setId:slectedIndexPath.row];
        
            if([[self.AutomobileAray objectAtIndex:slectedIndexPath.row] isKindOfClass:[MCCar class]]){

                [carDetails setCurrnetCar:[self.AutomobileAray objectAtIndex:slectedIndexPath.row]];

            }else if([[self.AutomobileAray objectAtIndex:slectedIndexPath.row] isKindOfClass:[MCTruck class]]){
                
                [carDetails setCurrnetTruck:[self.AutomobileAray objectAtIndex:slectedIndexPath.row]];
            }else if([[self.AutomobileAray objectAtIndex:slectedIndexPath.row] isKindOfClass:[MCMotorcycle class]]){
                
                [carDetails setCurrnetMotorcycle:[self.AutomobileAray objectAtIndex:slectedIndexPath.row]];

            }

    }
    
    
    // Pass the selected object to the new view controller.
}



@end
