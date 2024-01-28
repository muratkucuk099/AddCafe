//
//  ViewController.m
//  AddingCafe
//
//  Created by Mac on 25.01.2024.
//

#import "AddingViewController.h"
#import "Places.h"

@interface AddingViewController ()

@property (nonatomic, strong) MKPointAnnotation *currentAnnotation;

@end

@implementation AddingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mapView.delegate = self;
    UILongPressGestureRecognizer *longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleLongPress:)];
    [self.mapView addGestureRecognizer:longPressGesture];
}

- (void)handleLongPress:(UILongPressGestureRecognizer *)gestureRecognizer {
    if (gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        if (self.currentAnnotation) {
            [self.mapView removeAnnotation:self.currentAnnotation];
        }
        CGPoint touchPoint = [gestureRecognizer locationInView:self.mapView];
        MKPointAnnotation *pin = [[MKPointAnnotation alloc] init];
        _coordinate = [self.mapView convertPoint:touchPoint toCoordinateFromView:self.mapView];
        pin.coordinate = _coordinate;
        self.currentAnnotation = pin;
        [self.mapView addAnnotation:pin];
//        NSLog(@"Latitude: %f, Longitude: %f", _coordinate.latitude, _coordinate.longitude);
    }
}

- (IBAction)addButtonPressed:(id)sender {
    
    if (![_titleTextfield.text isEqual: @""] && ![_descriptionTextfield.text isEqual: @""]) {
        Places *place = [[Places alloc] initWithTitle:_titleTextfield.text
                                         description:_descriptionTextfield.text
                                            latitude:_coordinate.latitude
                                           longitude:_coordinate.longitude];
        [_placesMutableArray addObject:place];
        [self.delegate dataFromViewController: _placesMutableArray];
    }
    
}
@end
