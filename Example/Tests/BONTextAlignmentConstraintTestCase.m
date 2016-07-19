//
//  BONTextAlignmentConstraintTestCase.m
//  BonMot
//
//  Created by Zev Eisenberg on 7/21/15.
//  Copyright © 2015 Zev Eisenberg. All rights reserved.
//

#import "BONBaseTestCase.h"
#import "BONTextAlignmentConstraint.h"

static UILabel *testLabel(NSString *text, CGFloat fontSize)
{
    UILabel *label = nil;
    if (text && fontSize > 0) {
        label = [[UILabel alloc] initWithFrame:CGRectZero];
        label.translatesAutoresizingMaskIntoConstraints = NO;
        label.text = text;
        label.font = [UIFont systemFontOfSize:fontSize];
    }

    return label;
}
static UITextField *testTextField(NSString *text, CGFloat fontSize)
{
    UITextField *textField = nil;
    if (text && fontSize > 0) {
        textField = [[UITextField alloc] initWithFrame:CGRectZero];
        textField.translatesAutoresizingMaskIntoConstraints = NO;
        textField.text = text;
        textField.font = [UIFont systemFontOfSize:fontSize];
    }

    return textField;
}
static UITextView *testTextView(NSString *text, CGFloat fontSize)
{
    UITextView *textView = nil;
    if (text && fontSize > 0) {
        textView = [[UITextView alloc] initWithFrame:CGRectZero];
        textView.translatesAutoresizingMaskIntoConstraints = NO;
        textView.text = text;
        textView.font = [UIFont systemFontOfSize:fontSize];
    }

    return textView;
}

@interface BONTextAlignmentConstraintTestCase : BONBaseTestCase

@end

@implementation BONTextAlignmentConstraintTestCase

- (void)testTopConstraint
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeTop
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeTop];

    XCTAssertEqualWithAccuracy(constraint.constant, 0.0, kBONDoubleEpsilon);
}

- (void)testCapHeightConstraint
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeCapHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeCapHeight];

    XCTAssertEqualWithAccuracy(constraint.constant, 8.1694, kBONDoubleEpsilon);
}

- (void)testXHeightConstraint
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeXHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeXHeight];

    XCTAssertEqualWithAccuracy(constraint.constant, 14.05078, kBONDoubleEpsilon);
}

- (void)testTopToCapHeightConstraint
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeTop
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeCapHeight];

    XCTAssertEqualWithAccuracy(constraint.constant, 12.378, kBONDoubleEpsilon);
}

- (void)testCapHeightToTopConstraint
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeCapHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeTop];

    XCTAssertEqualWithAccuracy(constraint.constant, -4.20850, kBONDoubleEpsilon);
}

- (void)testTopToXHeightConstraint
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeTop
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeXHeight];

    XCTAssertEqualWithAccuracy(constraint.constant, 21.289, kBONDoubleEpsilon);
}

- (void)testXHeightToTopConstraint
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeXHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeTop];

    XCTAssertEqualWithAccuracy(constraint.constant, -7.2382, kBONDoubleEpsilon);
}

- (void)testCapHeightToXHeightConstraint
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeCapHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeXHeight];

    XCTAssertEqualWithAccuracy(constraint.constant, 17.0806, kBONDoubleEpsilon);
}

- (void)testXHeightToCapHeightConstraint
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeXHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeCapHeight];

    XCTAssertEqualWithAccuracy(constraint.constant, 5.1396, kBONDoubleEpsilon);
}

- (void)testFirstBaselineConstraint
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    XCTAssertThrows([BONTextAlignmentConstraint constraintWithItem:left
                                                         attribute:BONConstraintAttributeFirstBaseline
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:right
                                                         attribute:BONConstraintAttributeFirstBaseline]);
}

- (void)testLastBaselineConstraint
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    XCTAssertThrows([BONTextAlignmentConstraint constraintWithItem:left
                                                         attribute:BONConstraintAttributeLastBaseline
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:right
                                                         attribute:BONConstraintAttributeLastBaseline]);
}

- (void)testBottomConstraint
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    XCTAssertThrows([BONTextAlignmentConstraint constraintWithItem:left
                                                         attribute:BONConstraintAttributeBottom
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:right
                                                         attribute:BONConstraintAttributeBottom]);
}
#pragma mark - Font KVO
- (void)testObservesFirstLabelFont
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeXHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeCapHeight];
    CGFloat firstConstant = constraint.constant;
    [left setFont:[UIFont systemFontOfSize:30.0]];
    CGFloat secondConstant = constraint.constant;
    XCTAssertNotEqual(firstConstant, secondConstant);
}
- (void)testObservesSecondLabelFont
{
    UILabel *left = testLabel(@"left", 17.0);
    UILabel *right = testLabel(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeXHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeCapHeight];
    CGFloat firstConstant = constraint.constant;
    [right setFont:[UIFont systemFontOfSize:30.0]];
    CGFloat secondConstant = constraint.constant;
    XCTAssertNotEqual(firstConstant, secondConstant);
}
- (void)testObservesFirstTextFieldFont
{
    UITextField *left = testTextField(@"left", 17.0);
    UITextField *right = testTextField(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeXHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeCapHeight];
    CGFloat firstConstant = constraint.constant;
    [left setFont:[UIFont systemFontOfSize:30.0]];
    CGFloat secondConstant = constraint.constant;
    XCTAssertNotEqual(firstConstant, secondConstant);
}
- (void)testObservesSecondTextFieldFont
{
    UITextField *left = testTextField(@"left", 17.0);
    UITextField *right = testTextField(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeXHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeCapHeight];
    CGFloat firstConstant = constraint.constant;
    [right setFont:[UIFont systemFontOfSize:30.0]];
    CGFloat secondConstant = constraint.constant;
    XCTAssertNotEqual(firstConstant, secondConstant);
}
- (void)testObservesFirstTextViewFont
{
    UITextView *left = testTextView(@"left", 17.0);
    UITextView *right = testTextView(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeXHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeCapHeight];
    CGFloat firstConstant = constraint.constant;
    [left setFont:[UIFont systemFontOfSize:30.0]];
    CGFloat secondConstant = constraint.constant;
    XCTAssertNotEqual(firstConstant, secondConstant);
}
- (void)testObservesSecondTextViewFont
{
    UITextView *left = testTextView(@"left", 17.0);
    UITextView *right = testTextView(@"right", 50.0);

    BONTextAlignmentConstraint *constraint = [BONTextAlignmentConstraint constraintWithItem:left
                                                                                  attribute:BONConstraintAttributeXHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:right
                                                                                  attribute:BONConstraintAttributeCapHeight];
    CGFloat firstConstant = constraint.constant;
    [right setFont:[UIFont systemFontOfSize:30.0]];
    CGFloat secondConstant = constraint.constant;
    XCTAssertNotEqual(firstConstant, secondConstant);
}
@end
