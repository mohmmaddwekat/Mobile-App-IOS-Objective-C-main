//
//  MCCarTableViewController.h
//  iosProject0
//
//  Created by Student on 4/29/21.
//

#import <UIKit/UIKit.h>
#import "MCCar.h"
#import "MCTruck.h"
#import "MCMotorcycle.h"
#import "MCMotorcycle.h"
#import "MCAutomobileCellTableViewCell.h"
#import "MCEngine.h"
#import "MCDetailsViewController.h"
#import "Protocol.h"
#import "MCAddViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface MCCarTableViewController : UITableViewController <sendData>

@property NSMutableArray *AutomobileAray;


@end

NS_ASSUME_NONNULL_END
