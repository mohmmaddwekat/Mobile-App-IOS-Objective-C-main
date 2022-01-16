//
//  MCAddViewController.h
//  iosProject0
//
//  Created by King on 11/05/2021.
//

#import <UIKit/UIKit.h>
#import "MCCar.h"
#import "MCTruck.h"
#import "MCMotorcycle.h"
#import "MCDetailsViewController.h"
#import "MCCarTableViewController.h"
#import "MCChoicekindAutomobile.h"
#import "Protocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface MCAddViewController : UIViewController
@property(retain,nonatomic)NSString *checkButton;
@property (nonatomic) id <sendData>addAutomobileDelegate;

- (IBAction)doneUIButton:(id)sender;
- (IBAction)dismissBackToChooseKind:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UITextField *manufactureCompanyText;
@property (weak, nonatomic) IBOutlet UITextField *lengthText;
@property (weak, nonatomic) IBOutlet UITextField *modelText;
@property (weak, nonatomic) IBOutlet UITextField *manufactureDateText;
@property (weak, nonatomic) IBOutlet UITextField *bodySerialNumText;
@property (weak, nonatomic) IBOutlet UITextField *planteNumText;
@property (weak, nonatomic) IBOutlet UITextField *chairNumText;
@property (weak, nonatomic) IBOutlet UITextField *gearTypeText;
@property (weak, nonatomic) IBOutlet UITextField *isFurniterLeatherText;
@property (weak, nonatomic) IBOutlet UITextField *widthtext;

@property (weak, nonatomic) IBOutlet UITextField *factureCompanyText;
@property (weak, nonatomic) IBOutlet UITextField *ModelEngine;
@property (weak, nonatomic) IBOutlet UITextField *fuelTypeText;
@property (weak, nonatomic) IBOutlet UITextField *cylindersText;
@property (weak, nonatomic) IBOutlet UITextField *capacityText;
@property (weak, nonatomic) IBOutlet UITextField *factureDateText;

@property (weak, nonatomic) IBOutlet UITextField *freeWighttext;
@property (weak, nonatomic) IBOutlet UITextField *fullWighttext;
@property (strong, nonatomic) IBOutlet UITextField *tierDiametertext;
@property (strong, nonatomic) IBOutlet UILabel *widthLabel;
@property (strong, nonatomic) IBOutlet UILabel *chairNumLable;
@property (strong, nonatomic) IBOutlet UILabel *isFurniterLeatherLabel;



@end

NS_ASSUME_NONNULL_END
