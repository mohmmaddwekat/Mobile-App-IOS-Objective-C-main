//
//  MCChoicekindAutomobile.m
//  iosProject0
//
//  Created by King on 11/05/2021.
//

#import "MCChoicekindAutomobile.h"

@interface MCChoicekindAutomobile (){
    NSString * strButton;

}
@end

@implementation MCChoicekindAutomobile

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.imageCar setImage:[UIImage imageNamed:@"Car"] ];
    [self.imageTruck setImage:[UIImage imageNamed:@"Truck"] ];
    [self.imageMotorcycle setImage:[UIImage imageNamed:@"Motorcycle"] ];

}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if([strButton isEqualToString:@"Car"]){
        [self.addAutomobileDelegate send:self.currnetCar];
        
    }else if([strButton isEqualToString:@"Truck"]){
        
        [self.addAutomobileDelegate send:self.currnetTruck];

    }else if([strButton isEqualToString:@"Motorcycle"]){
        
        [self.addAutomobileDelegate send:self.currnetMotorcycle];

    }
}

- (IBAction)buttonAutomobile:(UIButton *)sender{
    if (sender.tag ==99){
        strButton =@"Car";
    }else if (sender.tag ==100){
        strButton =@"Truck";
    }else if (sender.tag ==101){
        strButton =@"Motorcycle";
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
-(IBAction)dismissAddScreen:(id)sender{
    

    
   
    [ self dismissViewControllerAnimated:YES completion:nil];
}
#pragma mark - Navigation
//*buttonCar;
//@property (weak, nonatomic) IBOutlet UIButton *buttonTruck;
//@property (weak, nonatomic) IBOutlet UIButton *buttonMotorcycle;
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    MCAddViewController *addAutomobile=[segue destinationViewController];
    addAutomobile.addAutomobileDelegate=self;
    [addAutomobile setCheckButton:strButton];
    
}


@end
