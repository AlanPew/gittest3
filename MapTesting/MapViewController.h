//
//  MapViewController.h
//  MapTesting
//
//  Created by Alan Pew on 3/28/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "GeoMapView.h"

@interface MapViewController : UIViewController

@property (nonatomic,strong) IBOutlet GeoMapView* map;
@property (nonatomic, strong) IBOutlet UILabel * label;

@end
