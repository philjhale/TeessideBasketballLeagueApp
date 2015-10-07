/*
	TblNews.h
	The interface definition of properties and methods for the TblNews object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
#import "TblEntity.h"
@class TblEntity;


@interface TblNews : TblEntity
{
	NSString* _Message;
	NSDate* _NewsDate;
	NSString* _Subject;
	
}
		
	@property (retain, nonatomic) NSString* Message;
	@property (retain, nonatomic) NSDate* NewsDate;
	@property (retain, nonatomic) NSString* Subject;

	+ (TblNews*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end