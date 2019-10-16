//
//  ViewController.m
//  DAM_IOS_TableView
//
//  Created by Raul Ramirez on 16/10/2019.
//  Copyright © 2019 Raul Ramirez. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row % 2 != 0){
        NSString *text = @"Soy una celda";
        NSString *cellId = @"mCell1";
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
        
        cell.backgroundColor = [UIColor colorWithRed:0.7 green:0 blue:0 alpha:0.3];
        
        UILabel *mLabel = (UILabel *) [self.view viewWithTag:1];
        mLabel.text = text;
        
        return cell;
    }else{
        Cell *cell = [tableView dequeueReusableCellWithIdentifier:@"mCell2"];
        [cell.image setImage:[UIImage imageNamed:@"estech_logo"]];
        
//        cell.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0.7 alpha:0.3];
        
        return cell;
    }
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *message;
    
    if (indexPath.row % 2 != 0){
        message = @"Celda con texto seleccionada.";
    }else{
        message = @"Celda con imagen seleccionada";
    }
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"CELDA SELECCIONADA" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}


@end
