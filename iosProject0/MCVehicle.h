//
//  MCVehicle.h
//  iosProject0
//
//  Created by Student on 4/17/21.
//

#import "MCAutomobile.h"
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MCVehicle : MCAutomobile

@property (assign, nonatomic) NSInteger length;
@property (assign, nonatomic) NSInteger width;
@property (retain, nonatomic) UIColor *color;

- (instancetype)initWithlength:(NSInteger)length
                         width:(NSInteger)width
                       UIColor:(UIColor *)color
            manufactureCompany:(NSString *)manufactureCompany
               manufactureDate:(NSDate *)manufactureDate
                         model:(NSString *)model
                        engine:(MCEngine *)engine
                     planteNum:(NSInteger )planteNum
                    MCGearType:(MCGearType)gearType
                 bodySerialNum:(NSInteger )bodySerialNum;
@end

NS_ASSUME_NONNULL_END
