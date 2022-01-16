//
//  MCCar.m
//  iosProject0
//
//  Created by Student on 4/17/21.
//

#import "MCCar.h"

@implementation MCCar

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
                   bodySerialNum:(NSInteger )bodySerialNum{
    
    self = [super initWithlength:length
                          width:width
                        UIColor:color
             manufactureCompany:manufactureCompany
                manufactureDate:manufactureDate
                          model:model
                         engine:engine
                      planteNum:planteNum
                     MCGearType:gearType
                  bodySerialNum:bodySerialNum];
    if (self){
        [self setChairNum:chairNum];
        [self setIsFurniterLeather:isFurniterLeather];
    }
    return self;
}

- (instancetype)init{
    NSString *defaultmanufactureCompany=@"";
    NSDate *defaultmanufactureDate =  [NSDate date];
    
    NSString *defaultmodel=@" ";
    MCEngine *defaultengine = [[MCEngine alloc]init];
    NSInteger defaultplanteNum=0;
    NSInteger defaultbodySerialNum=0;
    NSInteger defaultlength=0;
    NSInteger defaultwidth=0;
    UIColor *defaultcolor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    MCGearType defaultMCGearType =notdefined;
    
    NSInteger defaultchairNum=0;
    BOOL defaultisFurniterLeather=YES;
    
    
    return [self initWithchairNum:defaultchairNum
                isFurniterLeather:defaultisFurniterLeather
                           length:defaultlength
                            width:defaultwidth
                          UIColor:defaultcolor
               manufactureCompany:defaultmanufactureCompany
                  manufactureDate:defaultmanufactureDate
                            model:defaultmodel
                           engine:defaultengine
                        planteNum:defaultplanteNum
                       MCGearType:defaultMCGearType
                    bodySerialNum:defaultbodySerialNum];
}

- (instancetype)initWithlength:(NSInteger)length
                         width:(NSInteger)width
                       UIColor:(UIColor *)color
            manufactureCompany:(NSString *)manufactureCompany  manufactureDate:(NSDate *)manufactureDate
                         model:(NSString *)model
                        engine:(MCEngine *)engine
                     planteNum:(NSInteger )planteNum
                    MCGearType:(MCGearType)gearType
                 bodySerialNum:(NSInteger )bodySerialNum{
    
    NSInteger defaultchairNum=0;
    BOOL defaultisFurniterLeather=YES;
    
    return [self initWithchairNum:defaultchairNum
                isFurniterLeather:defaultisFurniterLeather
                           length:length
                            width:width
                          UIColor:color
               manufactureCompany:manufactureCompany
                  manufactureDate:manufactureDate
                            model:model
                           engine:engine
                        planteNum:planteNum
                       MCGearType:gearType
                    bodySerialNum:bodySerialNum];
}

@end
