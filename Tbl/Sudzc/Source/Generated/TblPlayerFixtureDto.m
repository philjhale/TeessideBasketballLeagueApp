/*
	TblPlayerFixtureDto.h
	The implementation of properties and methods for the TblPlayerFixtureDto object.
	Generated by SudzC.com
*/
#import "TblPlayerFixtureDto.h"

@implementation TblPlayerFixtureDto
	@synthesize FixtureId = _FixtureId;
	@synthesize Forename = _Forename;
	@synthesize Fouls = _Fouls;
	@synthesize IsMvp = _IsMvp;
	@synthesize PlayerId = _PlayerId;
	@synthesize Points = _Points;
	@synthesize Surname = _Surname;

	- (id) init
	{
		if(self = [super init])
		{
			self.Forename = nil;
			self.Surname = nil;

		}
		return self;
	}

	+ (TblPlayerFixtureDto*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (TblPlayerFixtureDto*)[[TblPlayerFixtureDto alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.FixtureId = [[Soap getNodeValue: node withName: @"FixtureId"] intValue];
			self.Forename = [Soap getNodeValue: node withName: @"Forename"];
			self.Fouls = [[Soap getNodeValue: node withName: @"Fouls"] intValue];
			self.IsMvp = [[Soap getNodeValue: node withName: @"IsMvp"] boolValue];
			self.PlayerId = [[Soap getNodeValue: node withName: @"PlayerId"] intValue];
			self.Points = [[Soap getNodeValue: node withName: @"Points"] intValue];
			self.Surname = [Soap getNodeValue: node withName: @"Surname"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"PlayerFixtureDto"];
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
		[s appendFormat: @"<FixtureId>%@</FixtureId>", [NSString stringWithFormat: @"%i", self.FixtureId]];
		if (self.Forename != nil) [s appendFormat: @"<Forename>%@</Forename>", [[self.Forename stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<Fouls>%@</Fouls>", [NSString stringWithFormat: @"%i", self.Fouls]];
		[s appendFormat: @"<IsMvp>%@</IsMvp>", (self.IsMvp)?@"true":@"false"];
		[s appendFormat: @"<PlayerId>%@</PlayerId>", [NSString stringWithFormat: @"%i", self.PlayerId]];
		[s appendFormat: @"<Points>%@</Points>", [NSString stringWithFormat: @"%i", self.Points]];
		if (self.Surname != nil) [s appendFormat: @"<Surname>%@</Surname>", [[self.Surname stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[TblPlayerFixtureDto class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
