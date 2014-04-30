//
//  KIFUITestActor+quesAdditions.m
//  ques
//
//  Created by fumiharu on 2014/04/30.
//
//

#import "KIFUITestActor+quesAdditions.h"

@implementation KIFUITestActor (quesAdditions)

-(void)replaceText:(NSString*)rep accessibility:(NSString*)accessibility{
    [self runBlock:^KIFTestStepResult(NSError **error) {
        UIView *view = [self waitForViewWithAccessibilityLabel:accessibility];
        if (!view) {
            return KIFTestStepResultFailure;
        }
        
        UILabel *label = (UILabel*)view;
        KIFTestCondition(label.text = [NSString stringWithString:rep], error, @"did can't be replaced the %@", rep);
        return KIFTestStepResultSuccess;
    }];
}

-(void)getSubviewWithAccessibilityLabel:(NSString *)accessibility{
    [self runBlock:^KIFTestStepResult(NSError **error) {
        UIView *mainView = [self waitForViewWithAccessibilityLabel:accessibility];
        for (UIView *views in [mainView subviews]) {
            NSLog(@"getting subview '%@'", views);
        }
        return KIFTestStepResultSuccess;
    }];
    
}

-(void)runJavascript:(NSString*)js accessibility:(NSString*)accessibility{
    [self runBlock:^KIFTestStepResult(NSError **error) {
        UIView *view = [self waitForViewWithAccessibilityLabel:accessibility];
        if (!view) {
            return KIFTestStepResultFailure;
        }
        
        UIWebView *webview = (UIWebView*)view;
        KIFTestCondition([webview stringByEvaluatingJavaScriptFromString:js], error, @"fail");
        return KIFTestStepResultSuccess;
    }];
}
@end
