//
//  MCEditViewController.m
//  iosProject0
//
//  Created by Student on 5/6/21.
//

#import "MCEditViewController.h"

@interface MCEditViewController ()

@end

@implementation MCEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    if (self.currnetCar!=nil) {
        NSString *dateString = [dateFormatter stringFromDate:self.currnetCar.engine.manufactureDate];

        [self.factureCompanyText setText:[NSString stringWithFormat:@"%@", self.currnetCar.engine.manufacture]];
        
        [self.ModelEngine setText:[NSString stringWithFormat:@"%@", self.currnetCar.engine.model]];
        
        [self.factureDateText setText:[NSString stringWithFormat:@"%@", dateString]];
        
        [self.capacityText setText:[NSString stringWithFormat:@"%zd", self.currnetCar.engine.capacity]];
        
        [self.cylindersText setText:[NSString stringWithFormat:@"%zd", self.currnetCar.engine.cylinders]];
        
        [self.fuelTypeText setText:[NSString stringWithFormat:@"%zd", self.currnetCar.engine.fuelType]];
        // Do any additional setup after loading the view.

        
        //AutomobileLabel
        
        [self.chairNumText setText:[NSString stringWithFormat:@"%zd", self.currnetCar.chairNum]];
        [self.isFurniterLeatherText setText:[NSString stringWithFormat:@"%s", self.currnetCar.isFurniterLeather ?"Yes":"No"]];
        
        
        [self.manufactureCompanyText setText:[NSString stringWithFormat:@"%@", self.currnetCar.manufactureCompany]];
        
        [self.lengthText setText:[NSString stringWithFormat:@"%zd", self.currnetCar.length]];
        
        [self.widthtext setText:[NSString stringWithFormat:@"%zd", self.currnetCar.width]];
        

   


        dateString = [dateFormatter stringFromDate:self.currnetCar.manufactureDate];

        [self.manufactureDateText setText:[NSString stringWithFormat:@"%@",dateString ]];
        
        [self.planteNumText setText:[NSString stringWithFormat:@"%zd", self.currnetCar.planteNum]];
        
        [self.gearTypeText setText:[NSString stringWithFormat:@"%zd", self.currnetCar.gearType]];
        
        [self.bodySerialNumText setText:[NSString stringWithFormat:@"%zd", self.currnetCar.bodySerialNum]];
        
        [self.modelText setText:[NSString stringWithFormat:@"%@", self.currnetCar.model]];
        
        //end car
    }else if (self.currnetTruck!=nil){
        
        NSString *dateString = [dateFormatter stringFromDate:self.currnetTruck.engine.manufactureDate];
        [self.factureCompanyText setText:[NSString stringWithFormat:@"%@", self.currnetTruck.engine.manufacture]];
        
        [self.ModelEngine setText:[NSString stringWithFormat:@"%@", self.currnetTruck.engine.model]];
        
        [self.factureDateText setText:[NSString stringWithFormat:@"%@", dateString]];
        
        [self.capacityText setText:[NSString stringWithFormat:@"%zd", self.currnetTruck.engine.capacity]];
        
        [self.cylindersText setText:[NSString stringWithFormat:@"%zd", self.currnetTruck.engine.cylinders]];
        
        [self.fuelTypeText setText:[NSString stringWithFormat:@"%zd", self.currnetTruck.engine.fuelType]];
        // Do any additional setup after loading the view.

        
        //AutomobileLabel
        [self.chairNumLabel setText:@"FreeWight"];
        [self.isFurniterLeatherLabel setText:@"FullWight"];

        [self.freeWightText setText:[NSString stringWithFormat:@"%.2f", self.currnetTruck.freeWight]];
        [self.fullWighttext setText:[NSString stringWithFormat:@"%.2f", self.currnetTruck.fullWight ]];
        
        
        [self.manufactureCompanyText setText:[NSString stringWithFormat:@"%@", self.currnetTruck.manufactureCompany]];
        
        [self.lengthText setText:[NSString stringWithFormat:@"%zd", self.currnetTruck.length]];
        
        [self.widthtext setText:[NSString stringWithFormat:@"%zd", self.currnetTruck.width]];
        




        dateString = [dateFormatter stringFromDate:self.currnetTruck.manufactureDate];

        [self.manufactureDateText setText:[NSString stringWithFormat:@"%@",dateString ]];
        
        [self.planteNumText setText:[NSString stringWithFormat:@"%zd", self.currnetTruck.planteNum]];
        
        [self.gearTypeText setText:[NSString stringWithFormat:@"%zd", self.currnetTruck.gearType]];
        
        [self.bodySerialNumText setText:[NSString stringWithFormat:@"%zd", self.currnetTruck.bodySerialNum]];
        
        [self.modelText setText:[NSString stringWithFormat:@"%@", self.currnetTruck.model]];
        
      //end truck
    }else if (self.currnetMotorcycle!=nil){
        NSString *dateString = [dateFormatter stringFromDate:self.currnetMotorcycle.engine.manufactureDate];

        [self.factureCompanyText setText:[NSString stringWithFormat:@"%@", self.currnetMotorcycle.engine.manufacture]];
        
        [self.ModelEngine setText:[NSString stringWithFormat:@"%@", self.currnetMotorcycle.engine.model]];
        
        [self.factureDateText setText:[NSString stringWithFormat:@"%@", dateString]];
        
        [self.capacityText setText:[NSString stringWithFormat:@"%zd", self.currnetMotorcycle.engine.capacity]];
        
        [self.cylindersText setText:[NSString stringWithFormat:@"%zd", self.currnetMotorcycle.engine.cylinders]];
        
        [self.fuelTypeText setText:[NSString stringWithFormat:@"%zd", self.currnetMotorcycle.engine.fuelType]];
        // Do any additional setup after loading the view.

        
        //AutomobileLabel
        [self.chairNumLabel setText:@"TierDiameter"];

        [self.chairNumText setText:[NSString stringWithFormat:@"%.2f", self.currnetMotorcycle.tierDiameter]];
        
        [self.lengthText setText:[NSString stringWithFormat:@"%.2f", self.currnetMotorcycle.length ]];
        
        [ self.widthtext setHidden:YES ];

        [ self.isFurniterLeatherText setHidden:YES ];
        [ self.widthLabel setHidden:YES ];

        [ self.isFurniterLeatherLabel setHidden:YES ];
        
        [self.manufactureCompanyText setText:[NSString stringWithFormat:@"%@", self.currnetMotorcycle.manufactureCompany]];
        
        dateString = [dateFormatter stringFromDate:self.currnetMotorcycle.manufactureDate];

        [self.manufactureDateText setText:[NSString stringWithFormat:@"%@",dateString ]];
        
        [self.modelText setText:[NSString stringWithFormat:@"%@", self.currnetMotorcycle.model]];
        
        [self.planteNumText setText:[NSString stringWithFormat:@"%zd", self.currnetMotorcycle.planteNum]];
        


        
        [self.gearTypeText setText:[NSString stringWithFormat:@"%zd", self.currnetMotorcycle.gearType]];
        
        [self.bodySerialNumText setText:[NSString stringWithFormat:@"%zd", self.currnetMotorcycle.bodySerialNum]];
        
  
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   // MCDetailsViewController *automobile=[segue destinationViewController];

    
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.

 
}


- (IBAction)doneUIButton:(id)sender{
    
    
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *dateFromString = [[NSDate alloc] init];
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
    
    if (self.currnetCar!=nil){
        
        dateFromString = [dateFormatter dateFromString:self.factureDateText.text];
        
        MCCar *Car=[[MCCar alloc] initWithchairNum:[self.chairNumText.text floatValue] isFurniterLeather:(BOOL)self.isFurniterLeatherText.text length:[self.lengthText.text floatValue] width:[self.widthtext.text floatValue] UIColor:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0] manufactureCompany:self.manufactureCompanyText.text manufactureDate:dateFromString model:self.modelText.text engine:engine planteNum:[self.planteNumText.text floatValue] MCGearType:[self.gearTypeText.text floatValue] bodySerialNum:[self.bodySerialNumText.text floatValue]];
        
        [self.editAutomobileDelegate send:Car];


 
    }
    else if (self.currnetTruck!=nil){
        
        dateFromString = [dateFormatter dateFromString:self.manufactureDateText.text];
        MCTruck *Truck=[[MCTruck alloc] initWithfreeWight:[self.freeWightText.text floatValue] fullWight:[self.fullWighttext.text floatValue] length:[self.lengthText.text floatValue] width:[self.widthtext.text floatValue] UIColor:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0] manufactureCompany:self.manufactureCompanyText.text manufactureDate:dateFromString model:self.modelText.text engine:engine planteNum:[self.planteNumText.text floatValue] MCGearType:[self.gearTypeText.text floatValue] bodySerialNum:[self.bodySerialNumText.text floatValue]];
        
        [self.editAutomobileDelegate send:Truck];

//    self.currnetMotorcycle.length =self.manufactureCompanyText.text;
        

 
    }else if (self.currnetMotorcycle!=nil){
        
        dateFromString = [dateFormatter dateFromString:self.manufactureDateText.text];
        MCMotorcycle *Motorcycle=[[MCMotorcycle alloc] initWithtierDameter:[self.chairNumText.text floatValue] length:[self.lengthText.text floatValue] manufactureCompany:self.manufactureCompanyText.text manufactureDate:dateFromString model:self.modelText.text engine:engine planteNum:[self.planteNumText.text floatValue] MCGearType:[self.gearTypeText.text floatValue] bodySerialNum:[self.bodySerialNumText.text floatValue]];

        [self.editAutomobileDelegate send:Motorcycle];

//    self.currnetMotorcycle.length =self.manufactureCompanyText.text;
        

 
    }
    
[ self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
