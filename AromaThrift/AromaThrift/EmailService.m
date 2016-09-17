/**
 * Autogenerated by Thrift Compiler (0.9.3)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#import <Foundation/Foundation.h>

@import LibThrift;










#import "Authentication.h"
#import "Aroma.h"
#import "Channels.h"
#import "Endpoint.h"
#import "Email.h"
#import "Exceptions.h"

#import "EmailService.h"

@implementation EmailService_SendEmailRequest

- (id) init
{
  self = [super init];
#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
#endif
  return self;
}

- (id) initWithToken: (EmailService_AuthenticationToken) token emailAddress: (NSString *) emailAddress emailMessage: (EmailService_EmailMessage) emailMessage
{
  self = [super init];
  __token = [token retain_stub];
  __token_isset = YES;
  __emailAddress = [emailAddress retain_stub];
  __emailAddress_isset = YES;
  __emailMessage = [emailMessage retain_stub];
  __emailMessage_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"token"])
  {
    __token = [[decoder decodeObjectForKey: @"token"] retain_stub];
    __token_isset = YES;
  }
  if ([decoder containsValueForKey: @"emailAddress"])
  {
    __emailAddress = [[decoder decodeObjectForKey: @"emailAddress"] retain_stub];
    __emailAddress_isset = YES;
  }
  if ([decoder containsValueForKey: @"emailMessage"])
  {
    __emailMessage = [[decoder decodeObjectForKey: @"emailMessage"] retain_stub];
    __emailMessage_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__token_isset)
  {
    [encoder encodeObject: __token forKey: @"token"];
  }
  if (__emailAddress_isset)
  {
    [encoder encodeObject: __emailAddress forKey: @"emailAddress"];
  }
  if (__emailMessage_isset)
  {
    [encoder encodeObject: __emailMessage forKey: @"emailMessage"];
  }
}

- (NSUInteger) hash
{
  NSUInteger hash = 17;
  hash = (hash * 31) ^ __token_isset ? 2654435761 : 0;
  if (__token_isset)
  {
    hash = (hash * 31) ^ [__token hash];
  }
  hash = (hash * 31) ^ __emailAddress_isset ? 2654435761 : 0;
  if (__emailAddress_isset)
  {
    hash = (hash * 31) ^ [__emailAddress hash];
  }
  hash = (hash * 31) ^ __emailMessage_isset ? 2654435761 : 0;
  if (__emailMessage_isset)
  {
    hash = (hash * 31) ^ [__emailMessage hash];
  }
  return hash;
}

- (BOOL) isEqual: (id) anObject
{
  if (self == anObject) {
    return YES;
  }
  if (![anObject isKindOfClass:[EmailService_SendEmailRequest class]]) {
    return NO;
  }
  EmailService_SendEmailRequest *other = (EmailService_SendEmailRequest *)anObject;
  if ((__token_isset != other->__token_isset) ||
      (__token_isset && ((__token || other->__token) && ![__token isEqual:other->__token]))) {
    return NO;
  }
  if ((__emailAddress_isset != other->__emailAddress_isset) ||
      (__emailAddress_isset && ((__emailAddress || other->__emailAddress) && ![__emailAddress isEqual:other->__emailAddress]))) {
    return NO;
  }
  if ((__emailMessage_isset != other->__emailMessage_isset) ||
      (__emailMessage_isset && ((__emailMessage || other->__emailMessage) && ![__emailMessage isEqual:other->__emailMessage]))) {
    return NO;
  }
  return YES;
}

- (void) dealloc
{
  [__token release_stub];
  [__emailAddress release_stub];
  [__emailMessage release_stub];
  [super dealloc_stub];
}

- (AromaAuthentication_AuthenticationToken *) token {
  return [[__token retain_stub] autorelease_stub];
}

- (void) setToken: (AromaAuthentication_AuthenticationToken *) token {
  [token retain_stub];
  [__token release_stub];
  __token = token;
  __token_isset = YES;
}

- (BOOL) tokenIsSet {
  return __token_isset;
}

- (void) unsetToken {
  [__token release_stub];
  __token = nil;
  __token_isset = NO;
}

- (NSString *) emailAddress {
  return [[__emailAddress retain_stub] autorelease_stub];
}

- (void) setEmailAddress: (NSString *) emailAddress {
  [emailAddress retain_stub];
  [__emailAddress release_stub];
  __emailAddress = emailAddress;
  __emailAddress_isset = YES;
}

- (BOOL) emailAddressIsSet {
  return __emailAddress_isset;
}

- (void) unsetEmailAddress {
  [__emailAddress release_stub];
  __emailAddress = nil;
  __emailAddress_isset = NO;
}

- (AromaEmail_EmailMessage *) emailMessage {
  return [[__emailMessage retain_stub] autorelease_stub];
}

- (void) setEmailMessage: (AromaEmail_EmailMessage *) emailMessage {
  [emailMessage retain_stub];
  [__emailMessage release_stub];
  __emailMessage = emailMessage;
  __emailMessage_isset = YES;
}

- (BOOL) emailMessageIsSet {
  return __emailMessage_isset;
}

- (void) unsetEmailMessage {
  [__emailMessage release_stub];
  __emailMessage = nil;
  __emailMessage_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TType_STRUCT) {
          AromaAuthentication_AuthenticationToken *fieldValue = [[AromaAuthentication_AuthenticationToken alloc] init];
          [fieldValue read: inProtocol];
          [self setToken: fieldValue];
          [fieldValue release_stub];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setEmailAddress: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_STRUCT) {
          AromaEmail_EmailMessage *fieldValue = [[AromaEmail_EmailMessage alloc] init];
          [fieldValue read: inProtocol];
          [self setEmailMessage: fieldValue];
          [fieldValue release_stub];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"SendEmailRequest"];
  if (__token_isset) {
    if (__token != nil) {
      [outProtocol writeFieldBeginWithName: @"token" type: TType_STRUCT fieldID: 1];
      [__token write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  }
  if (__emailAddress_isset) {
    if (__emailAddress != nil) {
      [outProtocol writeFieldBeginWithName: @"emailAddress" type: TType_STRING fieldID: 2];
      [outProtocol writeString: __emailAddress];
      [outProtocol writeFieldEnd];
    }
  }
  if (__emailMessage_isset) {
    if (__emailMessage != nil) {
      [outProtocol writeFieldBeginWithName: @"emailMessage" type: TType_STRUCT fieldID: 3];
      [__emailMessage write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (void) validate {
  // check for required fields
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"EmailService_SendEmailRequest("];
  [ms appendString: @"token:"];
  [ms appendFormat: @"%@", __token];
  [ms appendString: @",emailAddress:"];
  [ms appendFormat: @"\"%@\"", __emailAddress];
  [ms appendString: @",emailMessage:"];
  [ms appendFormat: @"%@", __emailMessage];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

@implementation EmailService_SendEmailResponse

- (id) init
{
  self = [super init];
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
}

- (NSUInteger) hash
{
  NSUInteger hash = 17;
  return hash;
}

- (BOOL) isEqual: (id) anObject
{
  if (self == anObject) {
    return YES;
  }
  if (![anObject isKindOfClass:[EmailService_SendEmailResponse class]]) {
    return NO;
  }
  EmailService_SendEmailResponse *other = (EmailService_SendEmailResponse *)anObject;
  return YES;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"SendEmailResponse"];
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (void) validate {
  // check for required fields
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"EmailService_SendEmailResponse("];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

static EmailService_int EmailService_SERVICE_PORT = 7017;
static AromaEndpoint_TcpEndpoint * EmailService_PRODUCTION_ENDPOINT;
static AromaEndpoint_TcpEndpoint * EmailService_BETA_ENDPOINT;
static NSString * EmailService_AROMA_EMAIL_ADDRESS = @"Aroma@RedRoma.tech";

@implementation EmailService_EmailServiceConstants
+ (void) initialize {
  EmailService_PRODUCTION_ENDPOINT = [[AromaEndpoint_TcpEndpoint alloc] init];
  [EmailService_PRODUCTION_ENDPOINT setHostname:@"email-srv.aroma.tech"];
  [EmailService_PRODUCTION_ENDPOINT setPort:7017];

;
  EmailService_BETA_ENDPOINT = [[AromaEndpoint_TcpEndpoint alloc] init];
  [EmailService_BETA_ENDPOINT setHostname:@"email-srv.beta.aroma.tech"];
  [EmailService_BETA_ENDPOINT setPort:7017];

;
}
+ (EmailService_int) SERVICE_PORT{
  return EmailService_SERVICE_PORT;
}
+ (AromaEndpoint_TcpEndpoint *) PRODUCTION_ENDPOINT{
  return EmailService_PRODUCTION_ENDPOINT;
}
+ (AromaEndpoint_TcpEndpoint *) BETA_ENDPOINT{
  return EmailService_BETA_ENDPOINT;
}
+ (NSString *) AROMA_EMAIL_ADDRESS{
  return EmailService_AROMA_EMAIL_ADDRESS;
}
@end

@interface EmailService_getApiVersion_args : NSObject <TBase, NSCoding> {
}

- (id) init;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

@end

@implementation EmailService_getApiVersion_args

- (id) init
{
  self = [super init];
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
}

- (NSUInteger) hash
{
  NSUInteger hash = 17;
  return hash;
}

- (BOOL) isEqual: (id) anObject
{
  if (self == anObject) {
    return YES;
  }
  if (![anObject isKindOfClass:[EmailService_getApiVersion_args class]]) {
    return NO;
  }
  EmailService_getApiVersion_args *other = (EmailService_getApiVersion_args *)anObject;
  return YES;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"getApiVersion_args"];
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (void) validate {
  // check for required fields
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"EmailService_getApiVersion_args("];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

@interface EmailService_GetApiVersion_result : NSObject <TBase, NSCoding> {
  double __success;

  BOOL __success_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, getter=success, setter=setSuccess:) double success;
#endif

- (id) init;
- (id) initWithSuccess: (double) success;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (double) success;
- (void) setSuccess: (double) success;
#endif
- (BOOL) successIsSet;

@end

@implementation EmailService_GetApiVersion_result

- (id) init
{
  self = [super init];
#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
#endif
  return self;
}

- (id) initWithSuccess: (double) success
{
  self = [super init];
  __success = success;
  __success_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"success"])
  {
    __success = [decoder decodeDoubleForKey: @"success"];
    __success_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__success_isset)
  {
    [encoder encodeDouble: __success forKey: @"success"];
  }
}

- (NSUInteger) hash
{
  NSUInteger hash = 17;
  hash = (hash * 31) ^ __success_isset ? 2654435761 : 0;
  if (__success_isset)
  {
    hash = (hash * 31) ^ [@(__success) hash];
  }
  return hash;
}

- (BOOL) isEqual: (id) anObject
{
  if (self == anObject) {
    return YES;
  }
  if (![anObject isKindOfClass:[EmailService_GetApiVersion_result class]]) {
    return NO;
  }
  EmailService_GetApiVersion_result *other = (EmailService_GetApiVersion_result *)anObject;
  if ((__success_isset != other->__success_isset) ||
      (__success_isset && (__success != other->__success))) {
    return NO;
  }
  return YES;
}

- (void) dealloc
{
  [super dealloc_stub];
}

- (double) success {
  return __success;
}

- (void) setSuccess: (double) success {
  __success = success;
  __success_isset = YES;
}

- (BOOL) successIsSet {
  return __success_isset;
}

- (void) unsetSuccess {
  __success_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 0:
        if (fieldType == TType_DOUBLE) {
          double fieldValue = [inProtocol readDouble];
          [self setSuccess: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"GetApiVersion_result"];

  if (__success_isset) {
    [outProtocol writeFieldBeginWithName: @"success" type: TType_DOUBLE fieldID: 0];
    [outProtocol writeDouble: __success];
    [outProtocol writeFieldEnd];
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (void) validate {
  // check for required fields
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"EmailService_GetApiVersion_result("];
  [ms appendString: @"success:"];
  [ms appendFormat: @"%f", __success];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

@interface EmailService_sendEmail_args : NSObject <TBase, NSCoding> {
  EmailService_SendEmailRequest * __request;

  BOOL __request_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=request, setter=setRequest:) EmailService_SendEmailRequest * request;
#endif

- (id) init;
- (id) initWithRequest: (EmailService_SendEmailRequest *) request;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (EmailService_SendEmailRequest *) request;
- (void) setRequest: (EmailService_SendEmailRequest *) request;
#endif
- (BOOL) requestIsSet;

@end

@implementation EmailService_sendEmail_args

- (id) init
{
  self = [super init];
#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
#endif
  return self;
}

- (id) initWithRequest: (EmailService_SendEmailRequest *) request
{
  self = [super init];
  __request = [request retain_stub];
  __request_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"request"])
  {
    __request = [[decoder decodeObjectForKey: @"request"] retain_stub];
    __request_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__request_isset)
  {
    [encoder encodeObject: __request forKey: @"request"];
  }
}

- (NSUInteger) hash
{
  NSUInteger hash = 17;
  hash = (hash * 31) ^ __request_isset ? 2654435761 : 0;
  if (__request_isset)
  {
    hash = (hash * 31) ^ [__request hash];
  }
  return hash;
}

- (BOOL) isEqual: (id) anObject
{
  if (self == anObject) {
    return YES;
  }
  if (![anObject isKindOfClass:[EmailService_sendEmail_args class]]) {
    return NO;
  }
  EmailService_sendEmail_args *other = (EmailService_sendEmail_args *)anObject;
  if ((__request_isset != other->__request_isset) ||
      (__request_isset && ((__request || other->__request) && ![__request isEqual:other->__request]))) {
    return NO;
  }
  return YES;
}

- (void) dealloc
{
  [__request release_stub];
  [super dealloc_stub];
}

- (EmailService_SendEmailRequest *) request {
  return [[__request retain_stub] autorelease_stub];
}

- (void) setRequest: (EmailService_SendEmailRequest *) request {
  [request retain_stub];
  [__request release_stub];
  __request = request;
  __request_isset = YES;
}

- (BOOL) requestIsSet {
  return __request_isset;
}

- (void) unsetRequest {
  [__request release_stub];
  __request = nil;
  __request_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TType_STRUCT) {
          EmailService_SendEmailRequest *fieldValue = [[EmailService_SendEmailRequest alloc] init];
          [fieldValue read: inProtocol];
          [self setRequest: fieldValue];
          [fieldValue release_stub];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"sendEmail_args"];
  if (__request_isset) {
    if (__request != nil) {
      [outProtocol writeFieldBeginWithName: @"request" type: TType_STRUCT fieldID: 1];
      [__request write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (void) validate {
  // check for required fields
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"EmailService_sendEmail_args("];
  [ms appendString: @"request:"];
  [ms appendFormat: @"%@", __request];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

@interface EmailService_SendEmail_result : NSObject <TBase, NSCoding> {
  EmailService_SendEmailResponse * __success;
  EmailService_InvalidArgumentException __ex1;
  EmailService_OperationFailedException __ex2;
  EmailService_InvalidTokenException __ex3;

  BOOL __success_isset;
  BOOL __ex1_isset;
  BOOL __ex2_isset;
  BOOL __ex3_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=success, setter=setSuccess:) EmailService_SendEmailResponse * success;
@property (nonatomic, retain, getter=ex1, setter=setEx1:) EmailService_InvalidArgumentException ex1;
@property (nonatomic, retain, getter=ex2, setter=setEx2:) EmailService_OperationFailedException ex2;
@property (nonatomic, retain, getter=ex3, setter=setEx3:) EmailService_InvalidTokenException ex3;
#endif

- (id) init;
- (id) initWithSuccess: (EmailService_SendEmailResponse *) success ex1: (EmailService_InvalidArgumentException) ex1 ex2: (EmailService_OperationFailedException) ex2 ex3: (EmailService_InvalidTokenException) ex3;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (EmailService_SendEmailResponse *) success;
- (void) setSuccess: (EmailService_SendEmailResponse *) success;
#endif
- (BOOL) successIsSet;

#if !__has_feature(objc_arc)
- (EmailService_InvalidArgumentException) ex1;
- (void) setEx1: (EmailService_InvalidArgumentException) ex1;
#endif
- (BOOL) ex1IsSet;

#if !__has_feature(objc_arc)
- (EmailService_OperationFailedException) ex2;
- (void) setEx2: (EmailService_OperationFailedException) ex2;
#endif
- (BOOL) ex2IsSet;

#if !__has_feature(objc_arc)
- (EmailService_InvalidTokenException) ex3;
- (void) setEx3: (EmailService_InvalidTokenException) ex3;
#endif
- (BOOL) ex3IsSet;

@end

@implementation EmailService_SendEmail_result

- (id) init
{
  self = [super init];
#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
#endif
  return self;
}

- (id) initWithSuccess: (EmailService_SendEmailResponse *) success ex1: (EmailService_InvalidArgumentException) ex1 ex2: (EmailService_OperationFailedException) ex2 ex3: (EmailService_InvalidTokenException) ex3
{
  self = [super init];
  __success = [success retain_stub];
  __success_isset = YES;
  __ex1 = [ex1 retain_stub];
  __ex1_isset = YES;
  __ex2 = [ex2 retain_stub];
  __ex2_isset = YES;
  __ex3 = [ex3 retain_stub];
  __ex3_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"success"])
  {
    __success = [[decoder decodeObjectForKey: @"success"] retain_stub];
    __success_isset = YES;
  }
  if ([decoder containsValueForKey: @"ex1"])
  {
    __ex1 = [[decoder decodeObjectForKey: @"ex1"] retain_stub];
    __ex1_isset = YES;
  }
  if ([decoder containsValueForKey: @"ex2"])
  {
    __ex2 = [[decoder decodeObjectForKey: @"ex2"] retain_stub];
    __ex2_isset = YES;
  }
  if ([decoder containsValueForKey: @"ex3"])
  {
    __ex3 = [[decoder decodeObjectForKey: @"ex3"] retain_stub];
    __ex3_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__success_isset)
  {
    [encoder encodeObject: __success forKey: @"success"];
  }
  if (__ex1_isset)
  {
    [encoder encodeObject: __ex1 forKey: @"ex1"];
  }
  if (__ex2_isset)
  {
    [encoder encodeObject: __ex2 forKey: @"ex2"];
  }
  if (__ex3_isset)
  {
    [encoder encodeObject: __ex3 forKey: @"ex3"];
  }
}

- (NSUInteger) hash
{
  NSUInteger hash = 17;
  hash = (hash * 31) ^ __success_isset ? 2654435761 : 0;
  if (__success_isset)
  {
    hash = (hash * 31) ^ [__success hash];
  }
  hash = (hash * 31) ^ __ex1_isset ? 2654435761 : 0;
  if (__ex1_isset)
  {
    hash = (hash * 31) ^ [__ex1 hash];
  }
  hash = (hash * 31) ^ __ex2_isset ? 2654435761 : 0;
  if (__ex2_isset)
  {
    hash = (hash * 31) ^ [__ex2 hash];
  }
  hash = (hash * 31) ^ __ex3_isset ? 2654435761 : 0;
  if (__ex3_isset)
  {
    hash = (hash * 31) ^ [__ex3 hash];
  }
  return hash;
}

- (BOOL) isEqual: (id) anObject
{
  if (self == anObject) {
    return YES;
  }
  if (![anObject isKindOfClass:[EmailService_SendEmail_result class]]) {
    return NO;
  }
  EmailService_SendEmail_result *other = (EmailService_SendEmail_result *)anObject;
  if ((__success_isset != other->__success_isset) ||
      (__success_isset && ((__success || other->__success) && ![__success isEqual:other->__success]))) {
    return NO;
  }
  if ((__ex1_isset != other->__ex1_isset) ||
      (__ex1_isset && ((__ex1 || other->__ex1) && ![__ex1 isEqual:other->__ex1]))) {
    return NO;
  }
  if ((__ex2_isset != other->__ex2_isset) ||
      (__ex2_isset && ((__ex2 || other->__ex2) && ![__ex2 isEqual:other->__ex2]))) {
    return NO;
  }
  if ((__ex3_isset != other->__ex3_isset) ||
      (__ex3_isset && ((__ex3 || other->__ex3) && ![__ex3 isEqual:other->__ex3]))) {
    return NO;
  }
  return YES;
}

- (void) dealloc
{
  [__success release_stub];
  [__ex1 release_stub];
  [__ex2 release_stub];
  [__ex3 release_stub];
  [super dealloc_stub];
}

- (EmailService_SendEmailResponse *) success {
  return [[__success retain_stub] autorelease_stub];
}

- (void) setSuccess: (EmailService_SendEmailResponse *) success {
  [success retain_stub];
  [__success release_stub];
  __success = success;
  __success_isset = YES;
}

- (BOOL) successIsSet {
  return __success_isset;
}

- (void) unsetSuccess {
  [__success release_stub];
  __success = nil;
  __success_isset = NO;
}

- (AromaException_InvalidArgumentException *) ex1 {
  return [[__ex1 retain_stub] autorelease_stub];
}

- (void) setEx1: (AromaException_InvalidArgumentException *) ex1 {
  [ex1 retain_stub];
  [__ex1 release_stub];
  __ex1 = ex1;
  __ex1_isset = YES;
}

- (BOOL) ex1IsSet {
  return __ex1_isset;
}

- (void) unsetEx1 {
  [__ex1 release_stub];
  __ex1 = nil;
  __ex1_isset = NO;
}

- (AromaException_OperationFailedException *) ex2 {
  return [[__ex2 retain_stub] autorelease_stub];
}

- (void) setEx2: (AromaException_OperationFailedException *) ex2 {
  [ex2 retain_stub];
  [__ex2 release_stub];
  __ex2 = ex2;
  __ex2_isset = YES;
}

- (BOOL) ex2IsSet {
  return __ex2_isset;
}

- (void) unsetEx2 {
  [__ex2 release_stub];
  __ex2 = nil;
  __ex2_isset = NO;
}

- (AromaException_InvalidTokenException *) ex3 {
  return [[__ex3 retain_stub] autorelease_stub];
}

- (void) setEx3: (AromaException_InvalidTokenException *) ex3 {
  [ex3 retain_stub];
  [__ex3 release_stub];
  __ex3 = ex3;
  __ex3_isset = YES;
}

- (BOOL) ex3IsSet {
  return __ex3_isset;
}

- (void) unsetEx3 {
  [__ex3 release_stub];
  __ex3 = nil;
  __ex3_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 0:
        if (fieldType == TType_STRUCT) {
          EmailService_SendEmailResponse *fieldValue = [[EmailService_SendEmailResponse alloc] init];
          [fieldValue read: inProtocol];
          [self setSuccess: fieldValue];
          [fieldValue release_stub];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 1:
        if (fieldType == TType_STRUCT) {
          AromaException_InvalidArgumentException *fieldValue = [[AromaException_InvalidArgumentException alloc] init];
          [fieldValue read: inProtocol];
          [self setEx1: fieldValue];
          [fieldValue release_stub];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_STRUCT) {
          AromaException_OperationFailedException *fieldValue = [[AromaException_OperationFailedException alloc] init];
          [fieldValue read: inProtocol];
          [self setEx2: fieldValue];
          [fieldValue release_stub];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_STRUCT) {
          AromaException_InvalidTokenException *fieldValue = [[AromaException_InvalidTokenException alloc] init];
          [fieldValue read: inProtocol];
          [self setEx3: fieldValue];
          [fieldValue release_stub];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"SendEmail_result"];

  if (__success_isset) {
    if (__success != nil) {
      [outProtocol writeFieldBeginWithName: @"success" type: TType_STRUCT fieldID: 0];
      [__success write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  } else if (__ex1_isset) {
    if (__ex1 != nil) {
      [outProtocol writeFieldBeginWithName: @"ex1" type: TType_STRUCT fieldID: 1];
      [__ex1 write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  } else if (__ex2_isset) {
    if (__ex2 != nil) {
      [outProtocol writeFieldBeginWithName: @"ex2" type: TType_STRUCT fieldID: 2];
      [__ex2 write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  } else if (__ex3_isset) {
    if (__ex3 != nil) {
      [outProtocol writeFieldBeginWithName: @"ex3" type: TType_STRUCT fieldID: 3];
      [__ex3 write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (void) validate {
  // check for required fields
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"EmailService_SendEmail_result("];
  [ms appendString: @"success:"];
  [ms appendFormat: @"%@", __success];
  [ms appendString: @",ex1:"];
  [ms appendFormat: @"%@", __ex1];
  [ms appendString: @",ex2:"];
  [ms appendFormat: @"%@", __ex2];
  [ms appendString: @",ex3:"];
  [ms appendFormat: @"%@", __ex3];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

@implementation EmailService_EmailServiceClient
- (id) initWithProtocol: (id <TProtocol>) protocol
{
  return [self initWithInProtocol: protocol outProtocol: protocol];
}

- (id) initWithInProtocol: (id <TProtocol>) anInProtocol outProtocol: (id <TProtocol>) anOutProtocol
{
  self = [super init];
  inProtocol = [anInProtocol retain_stub];
  outProtocol = [anOutProtocol retain_stub];
  return self;
}

- (void) send_getApiVersion
{
  [outProtocol writeMessageBeginWithName: @"getApiVersion" type: TMessageType_CALL sequenceID: 0];
  [outProtocol writeStructBeginWithName: @"getApiVersion_args"];
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
  [outProtocol writeMessageEnd];
}

- (double) recv_getApiVersion
{
  TApplicationException * x = [self checkIncomingMessageException];
  if (x != nil)  {
    @throw x;
  }
  EmailService_GetApiVersion_result * result = [[[EmailService_GetApiVersion_result alloc] init] autorelease_stub];
  [result read: inProtocol];
  [inProtocol readMessageEnd];
  if ([result successIsSet]) {
    return [result success];
  }
  @throw [TApplicationException exceptionWithType: TApplicationException_MISSING_RESULT
                                           reason: @"getApiVersion failed: unknown result"];
}

- (double) getApiVersion
{
  [self send_getApiVersion];
  [[outProtocol transport] flush];
  return [self recv_getApiVersion];
}

- (void) send_sendEmail: (EmailService_SendEmailRequest *) request
{
  [outProtocol writeMessageBeginWithName: @"sendEmail" type: TMessageType_CALL sequenceID: 0];
  [outProtocol writeStructBeginWithName: @"sendEmail_args"];
  if (request != nil)  {
    [outProtocol writeFieldBeginWithName: @"request" type: TType_STRUCT fieldID: 1];
    [request write: outProtocol];
    [outProtocol writeFieldEnd];
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
  [outProtocol writeMessageEnd];
}

- (EmailService_SendEmailResponse *) recv_sendEmail
{
  TApplicationException * x = [self checkIncomingMessageException];
  if (x != nil)  {
    @throw x;
  }
  EmailService_SendEmail_result * result = [[[EmailService_SendEmail_result alloc] init] autorelease_stub];
  [result read: inProtocol];
  [inProtocol readMessageEnd];
  if ([result successIsSet]) {
    return [result success];
  }
  if ([result ex1IsSet]) {
    @throw [result ex1];
  }
  if ([result ex2IsSet]) {
    @throw [result ex2];
  }
  if ([result ex3IsSet]) {
    @throw [result ex3];
  }
  @throw [TApplicationException exceptionWithType: TApplicationException_MISSING_RESULT
                                           reason: @"sendEmail failed: unknown result"];
}

- (EmailService_SendEmailResponse *) sendEmail: (EmailService_SendEmailRequest *) request
{
  [self send_sendEmail : request];
  [[outProtocol transport] flush];
  return [self recv_sendEmail];
}

@end

@implementation EmailService_EmailServiceProcessor

- (id) initWithEmailService: (id <EmailService_EmailService>) service
{
self = [super init];
if (!self) {
  return nil;
}
mService = [service retain_stub];
mMethodMap = [[NSMutableDictionary dictionary] retain_stub];
{
  SEL s = @selector(process_getApiVersion_withSequenceID:inProtocol:outProtocol:);
  NSMethodSignature * sig = [self methodSignatureForSelector: s];
  NSInvocation * invocation = [NSInvocation invocationWithMethodSignature: sig];
  [invocation setSelector: s];
  [invocation retainArguments];
  [mMethodMap setValue: invocation forKey: @"getApiVersion"];
}
{
  SEL s = @selector(process_sendEmail_withSequenceID:inProtocol:outProtocol:);
  NSMethodSignature * sig = [self methodSignatureForSelector: s];
  NSInvocation * invocation = [NSInvocation invocationWithMethodSignature: sig];
  [invocation setSelector: s];
  [invocation retainArguments];
  [mMethodMap setValue: invocation forKey: @"sendEmail"];
}
return self;
}

- (id<EmailService_EmailService>) service
{
  return [[mService retain_stub] autorelease_stub];
}

- (BOOL) processOnInputProtocol: (id <TProtocol>) inProtocol
                 outputProtocol: (id <TProtocol>) outProtocol
{
  NSString * messageName;
  int messageType;
  int seqID;
  [inProtocol readMessageBeginReturningName: &messageName
                                       type: &messageType
                                 sequenceID: &seqID];
  NSInvocation * invocation = [mMethodMap valueForKey: messageName];
  if (invocation == nil) {
    [TProtocolUtil skipType: TType_STRUCT onProtocol: inProtocol];
    [inProtocol readMessageEnd];
    TApplicationException * x = [TApplicationException exceptionWithType: TApplicationException_UNKNOWN_METHOD reason: [NSString stringWithFormat: @"Invalid method name: '%@'", messageName]];
    [outProtocol writeMessageBeginWithName: messageName
                                      type: TMessageType_EXCEPTION
                                sequenceID: seqID];
    [x write: outProtocol];
    [outProtocol writeMessageEnd];
    [[outProtocol transport] flush];
    return YES;
  }
  // NSInvocation does not conform to NSCopying protocol
  NSInvocation * i = [NSInvocation invocationWithMethodSignature: [invocation methodSignature]];
  [i setSelector: [invocation selector]];
  [i setArgument: &seqID atIndex: 2];
  [i setArgument: &inProtocol atIndex: 3];
  [i setArgument: &outProtocol atIndex: 4];
  [i setTarget: self];
  [i invoke];
  return YES;
}

- (void) process_getApiVersion_withSequenceID: (int32_t) seqID inProtocol: (id<TProtocol>) inProtocol outProtocol: (id<TProtocol>) outProtocol
{
EmailService_getApiVersion_args * args = [[EmailService_getApiVersion_args alloc] init];
[args read: inProtocol];
[inProtocol readMessageEnd];
EmailService_GetApiVersion_result * result = [[EmailService_GetApiVersion_result alloc] init];
[result setSuccess: [mService getApiVersion]];
[outProtocol writeMessageBeginWithName: @"getApiVersion"
                                  type: TMessageType_REPLY
                            sequenceID: seqID];
[result write: outProtocol];
[outProtocol writeMessageEnd];
[[outProtocol transport] flush];
[result release_stub];
[args release_stub];
}

- (void) process_sendEmail_withSequenceID: (int32_t) seqID inProtocol: (id<TProtocol>) inProtocol outProtocol: (id<TProtocol>) outProtocol
{
EmailService_sendEmail_args * args = [[EmailService_sendEmail_args alloc] init];
[args read: inProtocol];
[inProtocol readMessageEnd];
EmailService_SendEmail_result * result = [[EmailService_SendEmail_result alloc] init];
[result setSuccess: [mService sendEmail: [args request]]];
[outProtocol writeMessageBeginWithName: @"sendEmail"
                                  type: TMessageType_REPLY
                            sequenceID: seqID];
[result write: outProtocol];
[outProtocol writeMessageEnd];
[[outProtocol transport] flush];
[result release_stub];
[args release_stub];
}

- (void) dealloc
{
[mService release_stub];
[mMethodMap release_stub];
[super dealloc_stub];
}

@end

