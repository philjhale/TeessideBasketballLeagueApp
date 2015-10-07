/*
	TblPlayerSeasonFixtureStatsDto.h
	The implementation of properties and methods for the TblPlayerSeasonFixtureStatsDto object.
	Generated by SudzC.com
*/
#import "TblPlayerSeasonFixtureStatsDto.h"

@implementation TblPlayerSeasonFixtureStatsDto
	@synthesize CurrentTeam = _CurrentTeam;
	@synthesize FixtureDate = _FixtureDate;
	@synthesize Fouls = _Fouls;
	@synthesize IsMvp = _IsMvp;
	@synthesize OpponentName = _OpponentName;
	@synthesize Points = _Points;

	- (id) init
	{
		if(self = [super init])
		{
			self.CurrentTeam = nil;
			self.FixtureDate = nil;
			self.Fouls = nil;
			self.OpponentName = nil;
			self.Points = nil;

		}
		return self;
	}

	+ (TblPlayerSeasonFixtureStatsDto*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (TblPlayerSeasonFixtureStatsDto*)[[TblPlayerSeasonFixtureStatsDto alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.CurrentTeam = [Soap getNodeValue: node withName: @"CurrentTeam"];
			self.FixtureDate = [Soap dateFromString: [Soap getNodeValue: node withName: @"FixtureDate"]];
			self.Fouls = [Soap getNodeValue: node withName: @"Fouls"];
			self.IsMvp = [[Soap getNodeValue: node withName: @"IsMvp"] boolValue];
			self.OpponentName = [Soap getNodeValue: node withName: @"OpponentName"];
			self.Points = [Soap getNodeValue: node withName: @"Points"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"PlayerSeasonFixtureStatsDto"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		if (self.CurrentTeam != nil) [s appendFormat: @"<CurrentTeam>%@</CurrentTeam>", [[self.CurrentTeam stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.FixtureDate != nil) [s appendFormat: @"<FixtureDate>%@</FixtureDate>", [Soap getDateString: self.FixtureDate]];
		if (self.Fouls != nil) [s appendFormat: @"<Fouls>%@</Fouls>", [[self.Fouls stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<IsMvp>%@</IsMvp>", (self.IsMvp)?@"true":@"false"];
		if (self.OpponentName != nil) [s appendFormat: @"<OpponentName>%@</OpponentName>", [[self.OpponentName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.Points != nil) [s appendFormat: @"<Points>%@</Points>", [[self.Points stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[TblPlayerSeasonFixtureStatsDto class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
