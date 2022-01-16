//
//  MCDetailsViewController.h
//  iosProject0
//
//  Created by Student on 4/29/21.
//

#import <UIKit/UIKit.h>
#import "MCCar.h"
#import "MCTruck.h"
#import "MCMotorcycle.h"
#import "Protocol.h"
#import "MCEditViewController.h"
NS_ASSUME_NONNULL_BEGIN


@interface MCDetailsViewController : UIViewController <sendData>
@property (nonatomic) id <sendData>editAutomobileDelegate;

@property (weak, nonatomic) IBOutlet UIImageView *imageDetails;
@property(retain,nonatomic)MCCar *currnetCar;
@property(retain,nonatomic)MCTruck *currnetTruck;
@property(retain,nonatomic)MCMotorcycle *currnetMotorcycle;
@property(assign,nonatomic)NSInteger id;

@property (weak, nonatomic) IBOutlet UILabel *EngineModelLabel;
@property (weak, nonatomic) IBOutlet UILabel *EnginefactureCompanyLabel;
@property (weak, nonatomic) IBOutlet UILabel *EnginemanufactureDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *EnginecapacityLabel;
@property (weak, nonatomic) IBOutlet UILabel *EnginecylindersLabel;
@property (weak, nonatomic) IBOutlet UILabel *EnginefuelTypeLabel;

@property (weak, nonatomic) IBOutlet UILabel *AutomobilefreeWightLabel;
@property (weak, nonatomic) IBOutlet UILabel *AutomobilefullWightLabel;
@property (weak, nonatomic) IBOutlet UILabel *AutomobileTierDiameterLabel;



@property (weak, nonatomic) IBOutlet UILabel *AutomobilechairNumLabel;

@property (weak, nonatomic) IBOutlet UILabel *AutomobiileFurniterLeatherLabel;
@property (weak, nonatomic) IBOutlet UILabel *AutomobilemanufactureCompanyLabel;

@property (weak, nonatomic) IBOutlet UILabel *AutomobilelengthLabel;

@property (weak, nonatomic) IBOutlet UILabel *AutomobiwidthLabel;
@property (weak, nonatomic) IBOutlet UILabel *AutomobilecolorLabel;


@property (weak, nonatomic) IBOutlet UILabel *AutomobilemanufactureDateLabel;

@property (weak, nonatomic) IBOutlet UILabel *AutomobileplanteNumLabel;

@property (weak, nonatomic) IBOutlet UILabel *AutomobilegearTypeLabel;

@property (weak, nonatomic) IBOutlet UILabel *AutomobilebodySerialNumLabel;

@property (weak, nonatomic) IBOutlet UILabel *AutomobileModelLabel;







- (IBAction)dismissDetailsScreen:(id)sender;

@end

NS_ASSUME_NONNULL_END
