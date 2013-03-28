//  Created by James Graham on 4/29/12


#import "GeoMapView.h"



@implementation GeoMapView
@synthesize  left, right, top, bottom,zoomMax,zoomMin;

//
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    
    return YES;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    float xratio=(scrollView.contentOffset.x/scrollView.contentSize.width);
    float yratio=(scrollView.contentOffset.y/scrollView.contentSize.height);
     NSLog(@"scrollview x:%f width %f %f y:%f height %f %f",scrollView.contentOffset.x,scrollView.contentSize.width,xratio,scrollView.contentOffset.y,scrollView.contentSize.height,yratio);
    //  [self checkScroll];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"scrollmoved" object:scrollView];
    NSLog(@"-(void)scrollViewDidScroll:(UIScrollView *)scrollView");
    
}


-(void)checkZoom{
    //  UIScrollView * scroll = [[[[self subviews] objectAtIndex:0] subviews] objectAtIndex:0];
    
    
}


//without this method everything goes to shit
-(void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(float)scale
{
    
    NSLog(@"-(void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(float)scale");
  
    
    // if (scroll.zoomScale > zoomMin) {
    //     [scroll setZoomScale:zoomMin animated:NO];
    // }   
}




- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
    
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{
    NSLog(@"- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView");
}

//------------------------------------------

#pragma mark -


#pragma mark - Overlays










-(void)awakeFromNib{
    /* UITapGestureRecognizer *tgr = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleGesture:)];   
     tgr.numberOfTapsRequired = 1;
     tgr.numberOfTouchesRequired = 1;
     [self addGestureRecognizer:tgr];
     NSLog(@"init gesture reconziner");
     [tgr release];
     UIScrollView * scrollView = [[[[self subviews] objectAtIndex:0] subviews] objectAtIndex:0];
     //scrollView.delegate =  self;
     
     //  scrollView.contentSize = CGSizeMake(960, 960);
     // [scrollView setZoomScale:0.020551 animated:NO];
     NSLog(@"scrollview offset x:%f y:%f width %f height %f",scrollView.contentOffset.x,scrollView.contentOffset.y,scrollView.contentSize.width, scrollView.contentSize.height);*/
    NSLog(@"test awake from nib");
    UIScrollView * scrollView = [[[[self subviews] objectAtIndex:0] subviews] objectAtIndex:0];
    scrollView.delegate =  self;
    
 
}

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        UIScrollView * scrollView = [[[[self subviews] objectAtIndex:0] subviews] objectAtIndex:0];
        scrollView.delegate =  self;

  
        
    }
    return self;
}









@end