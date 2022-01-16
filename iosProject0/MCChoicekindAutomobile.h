//
//  MCChoicekindAutomobile.h
//  iosProject0
//
//  Created by King on 11/05/2021.
//

#import <UIKit/UIKit.h>
#import "MCAddViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface MCChoicekindAutomobile : UIViewController <sendData>
@property (nonatomic) id <sendData>addAutomobileDelegate;
- (IBAction)dismissAddScreen:(UIButton *)sender;
@property(retain,nonatomic)MCCar *currnetCar;
@property(retain,nonatomic)MCTruck *currnetTruck;
@property(retain,nonatomic)MCMotorcycle *currnetMotorcycle;
@property (weak, nonatomic) IBOutlet UIImageView *imageCar;
@property (weak, nonatomic) IBOutlet UIImageView *imageTruck;
@property (weak, nonatomic) IBOutlet UIImageView *imageMotorcycle;

- (IBAction)buttonAutomobile:(UIButton *)sender;


@end

NS_ASSUME_NONNULL_END
