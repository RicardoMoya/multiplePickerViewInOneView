//
//  JarrobaViewController.h
//  multiplePickerViewInOneView
//
//  Created by Ricardo Moya Garcia on 18/01/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JarrobaViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>{
    int idPicker;
}

@property (nonatomic, strong) NSArray *datosArray0;
@property (nonatomic, strong) NSArray *datosArray1;
@property (nonatomic, strong) NSArray *datosArray2;
@property (strong, nonatomic) IBOutlet UILabel *miLabel;
@property (strong, nonatomic) IBOutlet UIButton *boton1;
@property (strong, nonatomic) IBOutlet UIButton *boton2;
@property (strong, nonatomic) IBOutlet UIPickerView *myPicker;


- (IBAction)accionBoton1:(id)sender;
- (IBAction)accionBoton2:(id)sender;


@end
