//
//  JarrobaViewController.m
//  multiplePickerViewInOneView
//
//  Created by Ricardo Moya Garcia on 18/01/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import "JarrobaViewController.h"

#define uno 1
#define dos 2


@interface JarrobaViewController ()

@end

@implementation JarrobaViewController

@synthesize miLabel;
@synthesize boton1, boton2;
@synthesize myPicker;
@synthesize datosArray0, datosArray1, datosArray2;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    datosArray0 = [[NSArray alloc] initWithObjects:nil]; // Esta referenacia la utilizamos para apuntar al array Seleccionado
    datosArray1 = [[NSArray alloc] initWithObjects:@"1.1",@"1.2",@"1.3",@"1.4",nil];
    datosArray2 = [[NSArray alloc] initWithObjects:@"2.1",@"2.2",nil];
    
    self.myPicker.delegate = self;
    self.myPicker.hidden = YES;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Metodo para que desaparezca el pickerview cuando pulsas fuera de el
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)eve
{
    if ( !self.myPicker.hidden) {
        self.myPicker.hidden = YES;
    }
    
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [datosArray0 count];
}


- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [datosArray0 objectAtIndex:row];
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (idPicker == uno){ 
        miLabel.text = [datosArray0 objectAtIndex:row];
        [boton1 setTitle:[datosArray0 objectAtIndex:row] forState:UIControlStateNormal];
    }else{
        miLabel.text = [datosArray0 objectAtIndex:row];
        [boton2 setTitle:[datosArray0 objectAtIndex:row] forState:UIControlStateNormal];
    }
    
}

- (IBAction)accionBoton1:(id)sender {
    self.myPicker.hidden = NO;
    idPicker = uno;
    self.datosArray0 = self.datosArray1;
    [self.myPicker reloadAllComponents];
}

- (IBAction)accionBoton2:(id)sender {
    self.myPicker.hidden = NO;
    idPicker = dos;
    self.datosArray0 = self.datosArray2;
    [self.myPicker reloadAllComponents];
}
@end
