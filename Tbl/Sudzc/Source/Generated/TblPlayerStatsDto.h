/*
	TblPlayerStatsDto.h
	The interface definition of properties and methods for the TblPlayerStatsDto object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class TblArrayOfPlayerCareerStatsDto;
@class TblArrayOfPlayerSeasonFixtureStatsDto;
@class TblPlayer;

@interface TblPlayerStatsDto : SoapObject
{
	NSMutableArray* _CareerStats;
	NSMutableArray* _CurrentSeasonFixtureStats;
	TblPlayer* _Player;
	
}
		
	@property (retain, nonatomic) NSMutableArray* CareerStats;
	@property (retain, nonatomic) NSMutableArray* CurrentSeasonFixtureStats;
	@property (retain, nonatomic) TblPlayer* Player;

	+ (TblPlayerStatsDto*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
