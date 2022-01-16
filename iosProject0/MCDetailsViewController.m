//
//  MCDetailsViewController.m
//  iosProject0
//
//  Created by Student on 4/29/21.
//

#import "MCDetailsViewController.h"

@interface MCDetailsViewController (){
}
@end

@implementation MCDetailsViewController


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    if (self.currnetCar!=nil) {
        [self.imageDetails setImage:[UIImage imageNamed:@"Car2"] ];

        NSString *dateString = [dateFormatter stringFromDate:self.currnetCar.engine.manufactureDate];

        [self.EnginefactureCompanyLabel setText:[NSString stringWithFormat:@"Facture Company : %@", self.currnetCar.engine.manufacture]];
        
        [self.EngineModelLabel setText:[NSString stringWithFormat:@"Model : %@", self.currnetCar.engine.model]];
        
        [self.EnginemanufactureDateLabel setText:[NSString stringWithFormat:@"Manu Facture Date : %@", dateString]];
        
        [self.EnginecapacityLabel setText:[NSString stringWithFormat:@"Capacity : %zd", self.currnetCar.engine.capacity]];
        
        [self.EnginecylindersLabel setText:[NSString stringWithFormat:@"Cylinders : %zd", self.currnetCar.engine.cylinders]];
        
        [self.EnginefuelTypeLabel setText:[NSString stringWithFormat:@"Fuel Type : %zd", self.currnetCar.engine.fuelType]];
        // Do any additional setup after loading the view.

        
        //AutomobileLabel
        
        [self.AutomobilechairNumLabel setText:[NSString stringWithFormat:@"chair Num : %zd", self.currnetCar.chairNum]];
        [self.AutomobiileFurniterLeatherLabel setText:[NSString stringWithFormat:@"is FurniterLeather : %s", self.currnetCar.isFurniterLeather ?"Yes":"No"]];
        
        
        [self.AutomobilemanufactureCompanyLabel setText:[NSString stringWithFormat:@"ManufactureCompany: %@", self.currnetCar.manufactureCompany]];
        
        [self.AutomobilelengthLabel setText:[NSString stringWithFormat:@"Length : %zd", self.currnetCar.length]];
        
        [self.AutomobiwidthLabel setText:[NSString stringWithFormat:@"Width : %zd", self.currnetCar.width]];
        

        [self.AutomobilecolorLabel setText:[NSString stringWithFormat:@"Color : %@", self.currnetCar.color]];



        dateString = [dateFormatter stringFromDate:self.currnetCar.manufactureDate];

        [self.AutomobilemanufactureDateLabel setText:[NSString stringWithFormat:@"Facture Date : %@",dateString ]];
        
        [self.AutomobileplanteNumLabel setText:[NSString stringWithFormat:@"Plante Num : %zd", self.currnetCar.planteNum]];
        
        [self.AutomobilegearTypeLabel setText:[NSString stringWithFormat:@"Gear Type : %zd", self.currnetCar.gearType]];
        
        [self.AutomobilebodySerialNumLabel setText:[NSString stringWithFormat:@"Body Serial Num : %zd", self.currnetCar.bodySerialNum]];
        
        [self.AutomobileModelLabel setText:[NSString stringWithFormat:@"Model : %@", self.currnetCar.model]];
    }else if (self.currnetTruck!=nil){
        [self.imageDetails setImage:[UIImage imageNamed:@"Truck2"] ];

        NSString *dateString = [dateFormatter stringFromDate:self.currnetTruck.engine.manufactureDate];

        [self.EnginefactureCompanyLabel setText:[NSString stringWithFormat:@"Facture Company : %@", self.currnetTruck.engine.manufacture]];
        
        [self.EngineModelLabel setText:[NSString stringWithFormat:@"Model : %@", self.currnetTruck.engine.model]];
        
        [self.EnginemanufactureDateLabel setText:[NSString stringWithFormat:@"Manu Facture Date : %@", dateString]];
        
        [self.EnginecapacityLabel setText:[NSString stringWithFormat:@"Capacity : %zd", self.currnetTruck.engine.capacity]];
        
        [self.EnginecylindersLabel setText:[NSString stringWithFormat:@"Cylinders : %zd", self.currnetTruck.engine.cylinders]];
        
        [self.EnginefuelTypeLabel setText:[NSString stringWithFormat:@"Fuel Type : %zd", self.currnetTruck.engine.fuelType]];
        // Do any additional setup after loading the view.

        
        //AutomobileLabel

        [self.AutomobilefreeWightLabel setText:[NSString stringWithFormat:@"Free Wight : %f", self.currnetTruck.freeWight]];
        [self.AutomobilefullWightLabel setText:[NSString stringWithFormat:@"Full Wight : %.2f", self.currnetTruck.fullWight ]];
        
        
        [self.AutomobilemanufactureCompanyLabel setText:[NSString stringWithFormat:@"ManufactureCompany: %@", self.currnetTruck.manufactureCompany]];
        
        [self.AutomobilelengthLabel setText:[NSString stringWithFormat:@"Length : %zd", self.currnetTruck.length]];
        
        [self.AutomobiwidthLabel setText:[NSString stringWithFormat:@"Width : %zd", self.currnetTruck.width]];
        

        [self.AutomobilecolorLabel setText:[NSString stringWithFormat:@"Color : %@", self.currnetTruck.color]];



        dateString = [dateFormatter stringFromDate:self.currnetTruck.manufactureDate];

        [self.AutomobilemanufactureDateLabel setText:[NSString stringWithFormat:@"Facture Date : %@",dateString ]];
        
        [self.AutomobileplanteNumLabel setText:[NSString stringWithFormat:@"Plante Num : %zd", self.currnetTruck.planteNum]];
        
        [self.AutomobilegearTypeLabel setText:[NSString stringWithFormat:@"Gear Type : %zd", self.currnetTruck.gearType]];
        
        [self.AutomobilebodySerialNumLabel setText:[NSString stringWithFormat:@"Body Serial Num : %zd", self.currnetTruck.bodySerialNum]];
        
        [self.AutomobileModelLabel setText:[NSString stringWithFormat:@"Model : %@", self.currnetTruck.model]];
        
        
    }else if (self.currnetMotorcycle!=nil){
        [self.imageDetails setImage:[UIImage imageNamed:@"Motorcycle2"] ];

        NSString *dateString = [dateFormatter stringFromDate:self.currnetMotorcycle.engine.manufactureDate];

        [self.EnginefactureCompanyLabel setText:[NSString stringWithFormat:@"ManufactureCompany : %@", self.currnetMotorcycle.engine.manufacture]];
        
        [self.EngineModelLabel setText:[NSString stringWithFormat:@"Model : %@", self.currnetMotorcycle.engine.model]];
        
        [self.EnginemanufactureDateLabel setText:[NSString stringWithFormat:@"Manu Facture Date : %@", dateString]];
        
        [self.EnginecapacityLabel setText:[NSString stringWithFormat:@"Capacity : %zd", self.currnetMotorcycle.engine.capacity]];
        
        [self.EnginecylindersLabel setText:[NSString stringWithFormat:@"Cylinders : %zd", self.currnetMotorcycle.engine.cylinders]];
        
        [self.EnginefuelTypeLabel setText:[NSString stringWithFormat:@"Fuel Type : %zd", self.currnetMotorcycle.engine.fuelType]];
        // Do any additional setup after loading the view.

        
        //AutomobileLabel

        [self.AutomobileTierDiameterLabel setText:[NSString stringWithFormat:@"TierDiameter : %.2f", self.currnetMotorcycle.tierDiameter]];
        
        [self.AutomobilelengthLabel setText:[NSString stringWithFormat:@"Length : %.2f", self.currnetMotorcycle.length ]];
        
        [ self.AutomobiwidthLabel setHidden:YES ];
        [ self.AutomobilecolorLabel setHidden:YES ];
        [ self.AutomobiileFurniterLeatherLabel setHidden:YES ];
        
        [self.AutomobilemanufactureCompanyLabel setText:[NSString stringWithFormat:@"FactureCompany: %@", self.currnetMotorcycle.manufactureCompany]];
        
        dateString = [dateFormatter stringFromDate:self.currnetMotorcycle.manufactureDate];

        [self.AutomobilemanufactureDateLabel setText:[NSString stringWithFormat:@"Facture Date : %@",dateString ]];
        
        [self.AutomobileModelLabel setText:[NSString stringWithFormat:@"Model : %@", self.currnetMotorcycle.model]];
        
        [self.AutomobileplanteNumLabel setText:[NSString stringWithFormat:@"Plante Num : %zd", self.currnetMotorcycle.planteNum]];
        


        
        [self.AutomobilegearTypeLabel setText:[NSString stringWithFormat:@"Gear Type : %zd", self.currnetMotorcycle.gearType]];
        
        [self.AutomobilebodySerialNumLabel setText:[NSString stringWithFormat:@"Body Serial Num : %zd", self.currnetMotorcycle.bodySerialNum]];
        
  
    }



    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    

}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    MCEditViewController *editDetails=[segue destinationViewController];
        
    editDetails.editAutomobileDelegate=self;
    
    
    
    [editDetails setId:self.id];

    
    if([self.currnetCar  isKindOfClass:[MCCar class]]){

        [editDetails setCurrnetCar:self.currnetCar];
        
    }else if([self.currnetTruck  isKindOfClass:[MCTruck class]]){
        
        [editDetails setCurrnetTruck:self.currnetTruck];
        
    }else if([self.currnetMotorcycle  isKindOfClass:[MCMotorcycle class]]){
        
        [editDetails setCurrnetMotorcycle:self.currnetMotorcycle];
        
    }

}

- (void)send:(id)data{
    
    if ([data isKindOfClass:[MCCar class]]) {
        [self setCurrnetCar:data];
    }else if ([data isKindOfClass:[MCTruck class]]){
        [self setCurrnetTruck:data];
    }else if ([data isKindOfClass:[MCMotorcycle class]]){
        [self setCurrnetMotorcycle:data];
        
    }
}

- (IBAction)dismissDetailsScreen:(id)sender {

    


    
    if([self.currnetCar  isKindOfClass:[MCCar class]]){
        [self.editAutomobileDelegate send:self.currnetCar index:self.id];
        
    }else if([self.currnetTruck  isKindOfClass:[MCTruck class]]){
        
        [self.editAutomobileDelegate send:self.currnetTruck index:self.id];

    }else if([self.currnetMotorcycle  isKindOfClass:[MCMotorcycle class]]){
        
        [self.editAutomobileDelegate send:self.currnetMotorcycle index:self.id];

    }
   
    [ self dismissViewControllerAnimated:YES completion:nil];
}


@end
