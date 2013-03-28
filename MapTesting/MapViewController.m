//
//  MapViewController.m
//  MapTesting
//
//  Created by Alan Pew on 3/28/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

@synthesize map,label;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    UIScrollView * scrollView =  [[[[mapView subviews] objectAtIndex:0] subviews] objectAtIndex:0];
    float xratio=(scrollView.contentOffset.x/scrollView.contentSize.width);
    float yratio=(scrollView.contentOffset.y/scrollView.contentSize.height);

      self.label.text=[NSString stringWithFormat:@"scrollview x:%.0f width %.0f %.4f y:%.2f height %.0f %.4f",scrollView.contentOffset.x,scrollView.contentSize.width,xratio,scrollView.contentOffset.y,scrollView.contentSize.height,yratio];
}
- (void)mapView:(MKMapView *)map regionDidChangeAnimated:(BOOL)animated{
    UIScrollView * scrollView =  [[[[map subviews] objectAtIndex:0] subviews] objectAtIndex:0];
    float xratio=(scrollView.contentOffset.x/scrollView.contentSize.width);
    float yratio=(scrollView.contentOffset.y/scrollView.contentSize.height);
    
    self.label.text=[NSString stringWithFormat:@"scrollview x:%.0f width %.0f %.4f y:%.2f height %.0f %.4f",scrollView.contentOffset.x,scrollView.contentSize.width,xratio,scrollView.contentOffset.y,scrollView.contentSize.height,yratio]; 
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
