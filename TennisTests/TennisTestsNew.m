#import <XCTest/XCTest.h>
#import "TennisGame1.h"
#import "TennisGame2.h"
#import "TennisGame3.h"

@interface TennisTestsNew : XCTestCase
@end

@implementation TennisTestsNew

- (void)testAllScoresTennisGame1 {
    TennisGame1 *game = nil;
    
    for (NSArray *scores in self.allScores) {
        game = [[TennisGame1 alloc] initWithPlayer1:@"player1" player2:@"player2"];
    
        NSInteger highestScore = MAX([scores[0] intValue], [scores[1] intValue]);
        
        for (int i = 0; i < highestScore; i++) {
            if (i < [scores[0] intValue])
                [game wonPoint:@"player1"];
            if (i < [scores[1] intValue])
                [game wonPoint:@"player2"];
        }
        
        XCTAssertEqualObjects([game score], scores[2]);
    }
}

- (void)testAllScoresTennisGame2 {
    TennisGame2 *game = nil;
    
    for (NSArray *scores in self.allScores) {
        game = [[TennisGame2 alloc] initWithPlayer1:@"player1" player2:@"player2"];
        
        NSInteger highestScore = MAX([scores[0] intValue], [scores[1] intValue]);
        
        for (int i = 0; i < highestScore; i++) {
            if (i < [scores[0] intValue])
                [game wonPoint:@"player1"];
            if (i < [scores[1] intValue])
                [game wonPoint:@"player2"];
        }
        
        XCTAssertEqualObjects([game score], scores[2]);
    }
}

- (void)testAllScoresTennisGame3 {
    TennisGame3 *game = nil;
    
    for (NSArray *scores in self.allScores) {
        game = [[TennisGame3 alloc] initWithPlayer1:@"player1" player2:@"player2"];
        
        NSInteger highestScore = MAX([scores[0] intValue], [scores[1] intValue]);
        
        for (int i = 0; i < highestScore; i++) {
            if (i < [scores[0] intValue])
                [game wonPoint:@"player1"];
            if (i < [scores[1] intValue])
                [game wonPoint:@"player2"];
        }
        
        XCTAssertEqualObjects([game score], scores[2]);
    }
}

#pragma mark - Convenience

- (NSArray *)allScores {
    return @[
             @[ @0, @0, @"Love-All"],
             @[ @1, @1, @"Fifteen-All"],
             @[ @2, @2, @"Thirty-All"],
             @[ @3, @3, @"Deuce"],
             @[ @4, @4, @"Deuce"],
             
             @[ @1, @0, @"Fifteen-Love"],
             @[ @0, @1, @"Love-Fifteen"],
             @[ @2, @0, @"Thirty-Love"],
             @[ @0, @2, @"Love-Thirty"],
             @[ @3, @0, @"Forty-Love"],
             @[ @0, @3, @"Love-Forty"],
             @[ @4, @0, @"Win for player1"],
             @[ @0, @4, @"Win for player2"],
             
             @[ @2, @1, @"Thirty-Fifteen"],
             @[ @1, @2, @"Fifteen-Thirty"],
             @[ @3, @1, @"Forty-Fifteen"],
             @[ @1, @3, @"Fifteen-Forty"],
             @[ @4, @1, @"Win for player1"],
             @[ @1, @4, @"Win for player2"],
             
             @[ @3, @2, @"Forty-Thirty"],
             @[ @2, @3, @"Thirty-Forty"],
             @[ @4, @2, @"Win for player1"],
             @[ @2, @4, @"Win for player2"],
             
             @[ @4, @3, @"Advantage player1"],
             @[ @3, @4, @"Advantage player2"],
             @[ @5, @4, @"Advantage player1"],
             @[ @4, @5, @"Advantage player2"],
             @[ @15, @14, @"Advantage player1"],
             @[ @14, @15, @"Advantage player2"],
             
             @[ @6, @4, @"Win for player1"],
             @[ @4, @6, @"Win for player2"],
             @[ @16, @14, @"Win for player1"],
             @[ @14, @16, @"Win for player2"]
             ];
}

@end
