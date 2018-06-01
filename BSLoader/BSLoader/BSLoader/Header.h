//
//  Header.h
//  BSLoader
//
//  Created by Bisma on 09/10/2017.
//  Copyright © 2017 Bisma. All rights reserved.
//


typedef enum{
    
    BSColorSchemeOne,
    BSColorSchemeTwo,
    BSColorSchemeThree,
    BSColorSchemeFour,
    BSColorSchemeFive
    
}BSColorScheme;

#ifndef Header_h
#define Header_h

#define k_Animation_Duration 1.0
#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]

#endif /* Header_h */
