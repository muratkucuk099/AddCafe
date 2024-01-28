//
//  MapViewController.h
//  AddingCafe
//
//  Created by Mac on 25.01.2024.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapAnnotations.h"
#import "Places.h"
NS_ASSUME_NONNULL_BEGIN

@interface MapViewController : UIViewController <MapAnnotations>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic, strong) NSMutableArray<Places *> *placesMutableArray;


@end

NS_ASSUME_NONNULL_END
