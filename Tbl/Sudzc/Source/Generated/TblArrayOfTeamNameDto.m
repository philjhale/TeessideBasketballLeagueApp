/*
	TblArrayOfTeamNameDto.h
	The implementation of properties and methods for the TblArrayOfTeamNameDto array.
	Generated by SudzC.com
*/
#import "TblArrayOfTeamNameDto.h"

#import "TblTeamNameDto.h"
@implementation TblArrayOfTeamNameDto

	+ (id) newWithNode: (CXMLNode*) node
	{
		return [[TblArrayOfTeamNameDto alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				TblTeamNameDto* value = [[TblTeamNameDto newWithNode: child] object];
				if(value != nil) {
					[self addObject: value];
				}
			}
		}
		return self;
	}
	
	+ (NSMutableString*) serialize: (NSArray*) array
	{
		NSMutableString* s = [NSMutableString string];
		for(id item in array) {
			[s appendString: [item serialize: @"TeamNameDto"]];
		}
		return s;
	}
@end