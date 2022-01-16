//
//  MCEditViewController.h
//  iosProject0
//
//  Created by Student on 5/6/21.
//

#import <UIKit/UIKit.h>
#import "MCCar.h"
#import "MCTruck.h"
#import "MCMotorcycle.h"
#import "MCCarTableViewController.h"

#import "Protocol.h"

NS_ASSUME_NONNULL_BEGIN



@interface MCEditViewController : UIViewController 

@property (nonatomic) id <sendData>editAutomobileDelegate;

@property(retain,nonatomic)MCCar *currnetCar;
@property(retain,nonatomic)MCTruck *currnetTruck;
@property(retain,nonatomic)MCMotorcycle *currnetMotorcycle;
@property(assign,nonatomic)NSInteger id;

- (IBAction)doneUIButton:(id)sender;


@property (weak, nonatomic) IBOutlet UITextField *manufactureCompanyText;
@property (weak, nonatomic) IBOutlet UITextField *lengthText;
@property (weak, nonatomic) IBOutlet UITextField *modelText;
@property (weak, nonatomic) IBOutlet UITextField *manufactureDateText;
@property (weak, nonatomic) IBOutlet UITextField *bodySerialNumText;
@property (weak, nonatomic) IBOutlet UITextField *planteNumText;
@property (weak, nonatomic) IBOutlet UITextField *chairNumText;
@property (weak, nonatomic) IBOutlet UITextField *gearTypeText;
@property (weak, nonatomic) IBOutlet UITextField *isFurniterLeatherText;
@property (strong, nonatomic) IBOutlet UILabel *isFurniterLeatherLabel;
@property (weak, nonatomic) IBOutlet UITextField *widthtext;
@property (strong, nonatomic) IBOutlet UILabel *widthLabel;
@property (strong, nonatomic) IBOutlet UILabel *chairNumLabel;

@property (weak, nonatomic) IBOutlet UITextField *factureCompanyText;
@property (weak, nonatomic) IBOutlet UITextField *ModelEngine;
@property (weak, nonatomic) IBOutlet UITextField *fuelTypeText;
@property (weak, nonatomic) IBOutlet UITextField *cylindersText;
@property (weak, nonatomic) IBOutlet UITextField *capacityText;
@property (weak, nonatomic) IBOutlet UITextField *factureDateText;
@property (strong, nonatomic) IBOutlet UITextField *freeWightText;
@property (strong, nonatomic) IBOutlet UITextField *fullWighttext;

@end

NS_ASSUME_NONNULL_END
