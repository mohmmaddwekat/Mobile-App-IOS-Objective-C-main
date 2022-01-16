//
//  MCCar.h
//  iosProject0
//
//  Created by Student on 4/17/21.
//

#import "MCVehicle.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCCar : MCVehicle

@property (assign, nonatomic) NSInteger chairNum;
@property (assign, nonatomic) BOOL isFurniterLeather;

- (instancetype)initWithchairNum:(NSInteger)chairNum
               isFurniterLeather:(BOOL)isFurniterLeather
                          length:(NSInteger)length
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
