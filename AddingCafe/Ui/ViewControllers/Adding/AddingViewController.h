//
//  ViewController.h
//  AddingCafe
//
//  Created by Mac on 25.01.2024.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Places.h"
#import "MapAnnotations.h"

@interface AddingViewController : UIViewController<MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleTextfield;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextfield;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, strong) NSMutableArray<Places *> *placesMutableArray;

@property (nonatomic, weak) id<MapAnnotations> delegate;


- (IBAction)addButtonPressed:(id)sender;

@end

