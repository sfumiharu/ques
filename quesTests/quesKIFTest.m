//
//  quesKIFTest.m
//  ques
//
//  Created by fumiharu on 2014/04/30.
//
//

#import "quesKIFTest.h"
#import "KIFUITestActor+quesAdditions.h"

static const NSInteger kWaitTime = 2;

@implementation quesKIFTest
-(void)testShowLionView{
//    待機
    [tester waitForTimeInterval:kWaitTime];
//    tableviewの1セクション目の1つ目のセルをタップ
    [tester tapRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] inTableViewWithAccessibilityIdentifier:@"tableview"];
//    textfieldが表示されるまで待機
    [tester waitForViewWithAccessibilityLabel:@"textfield"];
//    textfieldにlionと入力
    [tester enterText:@"lion" intoViewWithAccessibilityLabel:@"textfield"];
//    ボタンをタップ
    [tester tapViewWithAccessibilityLabel:@"showalertbutton"];
    [tester waitForTimeInterval:kWaitTime];
//    alertviewのYESボタンをタップ (ボタンのラベルでオブジェクトへアクセスできたりする
    [tester tapViewWithAccessibilityLabel:@"YES"];

    [tester waitForViewWithAccessibilityLabel:@"lionview"];
    [tester waitForTimeInterval:kWaitTime];
    [tester tapViewWithAccessibilityLabel:@"Back"];
}

-(void)testZReplacingText{
    [tester waitForTimeInterval:kWaitTime];
    [tester tapRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:1]inTableViewWithAccessibilityIdentifier:@"tableview"];
    
//    [tester waitForViewWithAccessibilityLabel:@"label"];
//    label.textをchangedに変更
    [tester replaceText:@"changed." accessibility:@"label"];
    [tester waitForTimeInterval:kWaitTime];
    [tester tapViewWithAccessibilityLabel:@"Back"];
}

-(void)testGetSubviews{
    [tester waitForViewWithAccessibilityLabel:@"mainview"];
//    mainviewのsubviewsを取得
    [tester getSubviewWithAccessibilityLabel:@"mainview"];
}

-(void)testInputTextInWebView{
    [tester tapRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:2]inTableViewWithAccessibilityIdentifier:@"tableview"];
    [tester waitForTimeInterval:5];
    [tester runJavascript:@"document.gs.q.value = 'Ques?';" accessibility:@"webview"];
    [tester waitForTimeInterval:5];
    [tester tapViewWithAccessibilityLabel:@"Back"];
}
@end
