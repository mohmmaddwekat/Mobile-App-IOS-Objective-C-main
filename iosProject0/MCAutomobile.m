//
//  MCAutomobile.m
//  iosProject0
//
//  Created by Student on 4/17/21.
//

#import "MCAutomobile.h"

@implementation MCAutomobile
- (instancetype)initWithmanufactureCompany:(NSString *)manufactureCompany
                           manufactureDate:(NSDate *)manufactureDate
                                     model:(NSString *)model
                                    engine:(MCEngine *)engine
                                 planteNum:(NSInteger )planteNum
                                MCGearType:(MCGearType)gearType
                             bodySerialNum:(NSInteger )bodySerialNum{
    self = [super init];
    if (self){
        [self setManufactureCompany:manufactureCompany];
        [self setManufactureDate:manufactureDate];
        [self setModel:model];
        [self setEngine:engine];
        [self setPlanteNum:planteNum];
        [self setGearType:gearType];
        [self setBodySerialNum:bodySerialNum];
    }
    return self;
}
- (instancetype)init{
    NSString *defaultmanufactureCompany=@" ";
    NSDate *defaultmanufactureDate =  [NSDate date];
    NSString *defaultmodel=@" ";
    MCEngine *defaultengine = [[MCEngine alloc]init];
    NSInteger defaultplanteNum=0;
    NSInteger defaultbodySerialNum=0;
    MCGearType defaultMCGearType =notdefined;

    return [self initWithmanufactureCompany:defaultmanufactureCompany
                            manufactureDate:defaultmanufactureDate
                                      model:defaultmodel
                                     engine:defaultengine
                                  planteNum:defaultplanteNum
                                 MCGearType:defaultMCGearType
                              bodySerialNum:defaultbodySerialNum];
}

@end
