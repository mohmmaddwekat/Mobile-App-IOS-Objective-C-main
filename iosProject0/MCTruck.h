//
//  MCTruck.h
//  iosProject0
//
//  Created by Student on 4/17/21.
//

#import "MCVehicle.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCTruck : MCVehicle
@property (assign, nonatomic) double freeWight;
@property (assign, nonatomic) double fullWight;
- (instancetype)initWithfreeWight:(double)freeWight
                        fullWight:(double)fullWight
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
