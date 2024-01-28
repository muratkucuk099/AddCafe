//
//  MapViewController.m
//  AddingCafe
//
//  Created by Mac on 25.01.2024.
//

#import "MapViewController.h"
#import "Places.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    NSLog(@"%@", _placesMutableArray);
}

- (void)dataFromViewController:(id)data {
    [_placesMutableArray addObject:data[0]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
