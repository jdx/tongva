//
//  NavigationViewController.h
//  tongva
//
//  Created by Jeff Dickey on 3/11/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Hill.h"
#import "NewHillAlert.h"
#import "TongvaLocation.h"
#import "HillsViewController.h"

@interface NavigationViewController : UINavigationController <CLLocationManagerDelegate> {
    Hill *_previousHill;
    NewHillAlert *_newHillAlert;
    UITapGestureRecognizer *_tapGesture;
}

@end
