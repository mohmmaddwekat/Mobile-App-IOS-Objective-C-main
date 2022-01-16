//
//  MCAddViewController.m
//  iosProject0
//
//  Created by King on 11/05/2021.
//

#import "MCAddViewController.h"

@interface MCAddViewController ()

@end

@implementation MCAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if([self.checkButton isEqualToString:@"Truck"]){
        [self.chairNumLable setText:@"FreeWight"];
        [self.isFurniterLeatherLabel setText:@"FullWight"];
        
    }else if([self.checkButton isEqualToString:@"Motorcycle"]){
        [self.chairNumLable setText:@"TierDiameter"];
        [ self.widthtext setHidden:YES ];

        [ self.isFurniterLeatherText setHidden:YES ];
        [ self.widthLabel setHidden:YES ];

        [ self.isFurniterLeatherLabel setHidden:YES ];
    }
    
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.


}

- (IBAction)dismissBackToChooseKind:(UIButton *)sender {
    [ self dismissViewControllerAnimated:YES completion:nil];

}

- (IBAction)doneUIButton:(id)sender{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *dateFromString = [[NSDate alloc] init];
    if (
        (self.chairNumText.text.length ||
         self.freeWighttext.text.length ||
         self.tierDiametertext.text.length) &&
        (self.isFurniterLeatherText.text.length ||
        self.fullWighttext.text.length) &&
        self.lengthText.text.length &&
        self.widthtext.text.length &&
        self.manufactureCompanyText.text.length &&
        self.factureDateText.text.length &&
        self.planteNumText.text.length &&
        self.gearTypeText.text.length &&
        self.bodySerialNumText.text.length&&
        self.factureCompanyText.text&&
        self.factureDateText.text.length &&
        self.ModelEngine.text.length &&
        self.capacityText.text.length &&
        self.cylindersText.text.length &&
        self.fuelTypeText.text.length >0
        ){
        
    

    dateFromString = [dateFormatter dateFromString:self.factureDateText.text];
   MCEngine* engine=[[MCEngine alloc] initWithmanufacture:self.factureCompanyText.text
                                     manufactureDate:dateFromString
                                        model:self.ModelEngine.text
                                            capacity:[self.capacityText.text floatValue]
                                           cylinders:[self.cylindersText.text floatValue]
                                        fuelType: [self.fuelTypeText.text floatValue]];
//    if ([automobile isKindOfClass:[MCCar class]]){
//
//    }
    
    if ([self.checkButton isEqualToString:@"Car"]){
        
        dateFromString = [dateFormatter dateFromString:self.factureDateText.text];
        
        MCCar *Car=[[MCCar alloc] initWithchairNum:[self.chairNumText.text floatValue] isFurniterLeather:(BOOL)self.isFurniterLeatherText.text length:[self.lengthText.text floatValue] width:[self.widthtext.text floatValue] UIColor:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0] manufactureCompany:self.manufactureCompanyText.text manufactureDate:dateFromString model:self.modelText.text engine:engine planteNum:[self.planteNumText.text floatValue] MCGearType:[self.gearTypeText.text floatValue] bodySerialNum:[self.bodySerialNumText.text floatValue]];
        
//    self.currnetMotorcycle.length =self.manufactureCompanyText.text;
        
        [self.addAutomobileDelegate send:Car];
      

 
    }
    else if ([self.checkButton isEqualToString:@"Truck"]){
        
        dateFromString = [dateFormatter dateFromString:self.manufactureDateText.text];
        MCTruck *Truck=[[MCTruck alloc] initWithfreeWight:[self.freeWighttext.text floatValue] fullWight:[self.fullWighttext.text floatValue] length:[self.lengthText.text floatValue] width:[self.widthtext.text floatValue] UIColor:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0] manufactureCompany:self.manufactureCompanyText.text manufactureDate:dateFromString model:self.modelText.text engine:engine planteNum:[self.planteNumText.text floatValue] MCGearType:[self.gearTypeText.text floatValue] bodySerialNum:[self.bodySerialNumText.text floatValue]];
        
        [self.addAutomobileDelegate send:Truck];

//    self.currnetMotorcycle.length =self.manufactureCompanyText.text;
        

 
    }
    
        [ self dismissViewControllerAnimated:YES completion:nil];

    }
    else if (
             (
              self.tierDiametertext.text.length &&
              self.lengthText.text.length &&
              self.manufactureCompanyText.text.length &&
              self.factureDateText.text.length &&
              self.planteNumText.text.length &&
              self.gearTypeText.text.length &&
              self.bodySerialNumText.text.length&&
              self.factureCompanyText.text&&
              self.factureDateText.text.length &&
              self.ModelEngine.text.length &&
              self.capacityText.text.length &&
              self.cylindersText.text.length &&
              self.fuelTypeText.text.length >0
              )&&[self.checkButton isEqualToString:@"Motorcycle"]){
        MCEngine* engine=[[MCEngine alloc] initWithmanufacture:self.factureCompanyText.text
                                          manufactureDate:dateFromString
                                             model:self.ModelEngine.text
                                                 capacity:[self.capacityText.text floatValue]
                                                cylinders:[self.cylindersText.text floatValue]
                                             fuelType: [self.fuelTypeText.text floatValue]];
        dateFromString = [dateFormatter dateFromString:self.manufactureDateText.text];
        MCMotorcycle *Motorcycle=[[MCMotorcycle alloc] initWithtierDameter:[self.chairNumText.text floatValue] length:[self.lengthText.text floatValue] manufactureCompany:self.manufactureCompanyText.text manufactureDate:dateFromString model:self.modelText.text engine:engine planteNum:[self.planteNumText.text floatValue] MCGearType:[self.gearTypeText.text floatValue] bodySerialNum:[self.bodySerialNumText.text floatValue]];

        [self.addAutomobileDelegate send:Motorcycle];
        [ self dismissViewControllerAnimated:YES completion:nil];

//    self.currnetMotorcycle.length =self.manufactureCompanyText.text;
         
    }else{
        UIAlertController * alert = [UIAlertController
                                    alertControllerWithTitle:@"Error"
                                    message:@"Please enter all information"
                                    preferredStyle:UIAlertControllerStyleAlert];

       //Add Buttons


       UIAlertAction* noButton = [UIAlertAction
                                  actionWithTitle:@"OK"
                                  style:UIAlertActionStyleDefault
                                  handler:^(UIAlertAction * action) {
                                      //Handle no, thanks button
                                  }];


       [alert addAction:noButton];
        [self presentViewController:alert animated:YES completion:nil];


    }

}
@end
