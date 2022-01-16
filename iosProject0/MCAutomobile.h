//
//  MCAutomobile.h
//  iosProject0
//
//  Created by Student on 4/17/21.
//

#import <Foundation/Foundation.h>
#import "MCEngine.h"
#import "MCGearType.h"
NS_ASSUME_NONNULL_BEGIN

@interface MCAutomobile : NSObject

@property (copy, nonatomic) NSString *manufactureCompany;
@property (retain, nonatomic) NSDate *manufactureDate;
@property (copy, nonatomic) NSString *model;
@property (retain, nonatomic) MCEngine *engine;
@property (assign, nonatomic) NSInteger planteNum;
@property  (assign, nonatomic) MCGearType gearType;
@property (assign, nonatomic) NSInteger bodySerialNum;

- (instancetype)initWithmanufactureCompany:(NSString *)manufactureCompany
                 manufactureDate:(NSDate *)manufactureDate
                           model:(NSString *)model
                          engine:(MCEngine *)engine
                       planteNum:(NSInteger )planteNum
                      MCGearType:(MCGearType)gearType
                   bodySerialNum:(NSInteger )bodySerialNum;
@end
NS_ASSUME_NONNULL_END
