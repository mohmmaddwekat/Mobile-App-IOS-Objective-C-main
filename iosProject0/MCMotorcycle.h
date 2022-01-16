//
//  MCMotorcycle.h
//  iosProject0
//
//  Created by Student on 4/17/21.
//

#import "MCAutomobile.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCMotorcycle : MCAutomobile

@property (assign, nonatomic) double tierDiameter;
@property (assign, nonatomic) double length;

- (instancetype)initWithtierDameter:(double)tierDiameter
                   length:(double)length
       manufactureCompany:(NSString *)manufactureCompany
          manufactureDate:(NSDate *)manufactureDate
                    model:(NSString *)model
                   engine:(MCEngine *)engine
                planteNum:(NSInteger )planteNum
               MCGearType:(MCGearType)gearType
            bodySerialNum:(NSInteger )bodySerialNum;
@end

NS_ASSUME_NONNULL_END
