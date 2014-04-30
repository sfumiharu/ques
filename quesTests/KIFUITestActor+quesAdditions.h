//
//  KIFUITestActor+quesAdditions.h
//  ques
//
//  Created by fumiharu on 2014/04/30.
//
//

#import "KIFUITestActor.h"

@interface KIFUITestActor (quesAdditions)
-(void)replaceText:(NSString*)rep accessibility:(NSString*)accessibility;
-(void)getSubviewWithAccessibilityLabel:(NSString *)accessibility;
-(void)runJavascript:(NSString*)js accessibility:(NSString*)accessibility;
@end
