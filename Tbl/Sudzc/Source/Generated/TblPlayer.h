/*
	TblPlayer.h
	The interface definition of properties and methods for the TblPlayer object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class TblTeam;
#import "TblEntity.h"
@class TblEntity;


@interface TblPlayer : TblEntity
{
	NSDate* _DOB;
	NSString* _Forename;
	int _HeightFeet;
	int _HeightInches;
	NSString* _MiddleName;
	NSString* _Surname;
	TblTeam* _Team;
	
}
		
	@property (retain, nonatomic) NSDate* DOB;
	@property (retain, nonatomic) NSString* Forename;
	@property int HeightFeet;
	@property int HeightInches;
	@property (retain, nonatomic) NSString* MiddleName;
	@property (retain, nonatomic) NSString* Surname;
	@property (retain, nonatomic) TblTeam* Team;

	+ (TblPlayer*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
