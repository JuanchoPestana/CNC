//
//  Vertical3ViewController.m
//  Friends
//
//  Created by Juan Pestana on 3/11/15.
//  Copyright (c) 2015 Juan Pestana. All rights reserved.
//

#import "Vertical3ViewController.h"

@interface Vertical3ViewController ()

@end

@implementation Vertical3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)calcular:(id)sender {
    
    // DEFINICION DE PI
    double pi = 3.14159;
    
    
    // CONVERTIR TEXTOS A NUMEROS
    NSString *coordX = _coordX.text;
    double x = [coordX doubleValue];
    
    NSString *coordY = _coordY.text;
    double y = [coordY doubleValue];
    
    NSString *angText = _angulo.text;
    double angulo = [angText doubleValue];
    
    NSString *radText = _radio.text;
    double radio = [radText doubleValue];
    
    
    
    
    
    
    
    ////////////////////////////////////OPERACIONES/////////////////////////////////////////////////////
    
    // CONVERTIR ANGULO A RADIANES PARA SACAR FUNCIONES TRIGONOMETRICAS
    double angRadianes = (angulo) * (pi/180);
    
    
    // PASOS
    
    // 1
    double uno = (radio) * (cos(angRadianes));
    
    // 2
    double dos = radio - uno;
    
    // 3
    double tres = dos / (tan(angRadianes));
    
    // 4
    double cuatro = (radio * sin(angRadianes)) - tres;
    
    
    // PUNTOS A Y B
    
    // A
    double xPuntoA = x + dos;
    double yPuntoA = y - tres;
    
    // B
    double xPuntoB = x;
    double yPuntoB = y + cuatro;
    
    
    
    
    
    
    
    /////////////////////////////////// DISPLAY ///////////////////////////////////////////
    
    
    // CONVERTIR DOUBLES A STRINGS
    
    // Uno
    NSString *stringUno = [NSString stringWithFormat:@"%f", uno];
    
    // Dos
    NSString *stringDos = [NSString stringWithFormat:@"%f", dos];
    
    // Tres
    NSString *stringTres = [NSString stringWithFormat:@"%f", tres];
    
    // Cuatro
    NSString *stringCuatro= [NSString stringWithFormat:@"%f", cuatro];
    
    // Final
    NSString *stringFinal = [NSString stringWithFormat:@"(%0.2f , %0.2f)", xPuntoA, yPuntoA];
    
    // FinalB
    NSString *stringFinalB = [NSString stringWithFormat:@"(%0.2f , %0.2f)", xPuntoB, yPuntoB];
    
    
    // METER STRINGS EN LABELS DEL UI
    
    // Uno
    _uno.text = stringUno;
    
    // Dos
    _dos.text = stringDos;
    
    // Tres
    _tres.text = stringTres;
    
    // Cuatro
    _cuatro.text = stringCuatro;
    
    // Final
    _final.text = stringFinal;
    
    // FinalB
    _finalB.text = stringFinalB;
    
}
@end
