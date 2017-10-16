//
//  VerticalViewController.h
//  Friends
//
//  Created by Juan Pestana on 3/10/15.
//  Copyright (c) 2015 Juan Pestana. All rights reserved.
//

#import "ViewController.h"

@interface VerticalViewController : ViewController



// ENTRADAS
@property (strong, nonatomic) IBOutlet UITextField *coordX;

@property (strong, nonatomic) IBOutlet UITextField *coordY;

@property (strong, nonatomic) IBOutlet UITextField *angulo;

@property (strong, nonatomic) IBOutlet UITextField *radio;


// SALIDAS
@property (strong, nonatomic) IBOutlet UILabel *uno;

@property (strong, nonatomic) IBOutlet UILabel *dos;

@property (strong, nonatomic) IBOutlet UILabel *tres;

@property (strong, nonatomic) IBOutlet UILabel *cuatro;




@property (strong, nonatomic) IBOutlet UILabel *final;

@property (strong, nonatomic) IBOutlet UILabel *finalB;



- (IBAction)calcular:(id)sender;

@end
