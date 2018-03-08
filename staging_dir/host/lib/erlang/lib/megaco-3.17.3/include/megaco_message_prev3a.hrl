%%<copyright>
%% <year>2004-2008</year>
%% <holder>Ericsson AB, All Rights Reserved</holder>
%%</copyright>
%%<legalnotice>
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%%
%% The Initial Developer of the Original Code is Ericsson AB.
%%</legalnotice>
%%
%%----------------------------------------------------------------------
%% Generated by the Erlang ASN.1 compiler version:1.2.7
%% Purpose: Erlang record definitions for each named and unnamed
%%          SEQUENCE and SET in module MEDIA-GATEWAY-CONTROL
%%----------------------------------------------------------------------

-record('MegacoMessage',
	{
	  authHeader = asn1_NOVALUE,
	  mess
	 }).

-record('AuthenticationHeader',
	{
	  secParmIndex, 
	  seqNum, 
	  ad
	 }).

-record('Message',
	{
	  version, 
	  mId, 
	  messageBody
	 }). % with extension mark

-record('DomainName',
	{
	  name, 
	  portNumber = asn1_NOVALUE
	 }).

-record('IP4Address',
	{
	  address,
	  portNumber = asn1_NOVALUE
	 }).

-record('IP6Address',
	{
	  address, 
	  portNumber = asn1_NOVALUE
	 }).

-record('TransactionRequest',
	{
	  transactionId, 
	  actions = []
	 }). % with extension mark

-record('TransactionPending',
	{
	  transactionId
	 }). % with extension mark

-record('TransactionReply',
	{
	  transactionId, 
	  immAckRequired = asn1_NOVALUE, 
	  transactionResult,

	  %% with extension mark -- prev3a --

	  %% Erlang Note: NOT REALLY PART OF THIS IMPLEMENTATION
	  %% Erlang Note: The only reason why we need to include
	  %% Erlang Note: these definitions in this version is
	  %% Erlang Note: that we cannot distinguish between v3 
	  %% Erlang Note: versions in the megaco_messenger module
	  segmentNumber        = asn1_NOVALUE,
	  segmentationComplete = asn1_NOVALUE
	 }). 

%% SegmentReply only used internally (in the engine)

-record('TransactionAck',
	{
	  firstAck, 
	  lastAck = asn1_NOVALUE
	 }).

-record('ErrorDescriptor',
	{
	  errorCode, 
	  errorText = asn1_NOVALUE
	 }).

-record('ActionRequest',
	{
	  contextId, 
	  contextRequest = asn1_NOVALUE, 
	  contextAttrAuditReq = asn1_NOVALUE, 
	  commandRequests = []
	 }).

-record('ActionReply',
	{
	  contextId, 
	  errorDescriptor = asn1_NOVALUE, 
	  contextReply = asn1_NOVALUE, 
	  commandReply = []
	 }).

-record('ContextRequest',
	{
	  priority = asn1_NOVALUE, 
	  emergency = asn1_NOVALUE, 
	  topologyReq = asn1_NOVALUE,

	  %% with extension mark -- prev3a --

	  iepsCallind = asn1_NOVALUE,  % V3 Fixed
	  contextProp = asn1_NOVALUE
	 }). 

-record('ContextAttrAuditRequest',
	{
	  topology = asn1_NOVALUE, 
	  emergency = asn1_NOVALUE, 
	  priority = asn1_NOVALUE,

	  %% with extension mark -- prev3a --

	  iepsCallind = asn1_NOVALUE,  % V3 Fixed
	  contextPropAud = asn1_NOVALUE
	 }). 

-record('CommandRequest',
	{
	  command, 
	  optional = asn1_NOVALUE, 
	  wildcardReturn = asn1_NOVALUE
	 }). % with extension mark

-record('TopologyRequest',
	{
	  terminationFrom, 
	  terminationTo, 
	  topologyDirection,
	  
	  %% After extension mark
	  streamID = asn1_NOVALUE  %% Only in ASN.1
	 }).

-record('AmmRequest',
	{
	  terminationID = [], 
	  descriptors = []
	 }). % with extension mark

-record('AmmsReply',
	{
	  terminationID = [], 
	  terminationAudit = asn1_NOVALUE
	 }). % with extension mark

-record('SubtractRequest',
	{
	  terminationID = [], 
	  auditDescriptor = asn1_NOVALUE
	 }). % with extension mark

-record('AuditRequest',
	{
	  terminationID, 
	  auditDescriptor
	 }). % with extension mark

-record('AuditResult',
	{
	  terminationID, 
	  terminationAuditResult = []
	 }).

-record('AuditDescriptor',
	{
	  auditToken         = asn1_NOVALUE,
	  %% with extensions
	  auditPropertyToken = asn1_NOVALUE  
	 }). 


%% --- v2 start ---

-record('IndAudMediaDescriptor',
	{
	  termStateDescr = asn1_NOVALUE,
	  streams        = asn1_NOVALUE
	}). % with extension mark

-record('IndAudStreamDescriptor',
	{
	  streamID,
	  streamParms
	}). % with extension mark

-record('IndAudStreamParms',
	{
	  localControlDescriptor = asn1_NOVALUE,
	  localDescriptor        = asn1_NOVALUE, %% NOTE: NOT IN TEXT
	  remoteDescriptor       = asn1_NOVALUE, %% NOTE: NOT IN TEXT
	  
	  %% with extension mark -- prev3a --

	  statisticsDescriptor   = asn1_NOVALUE
	}). 

-record('IndAudLocalControlDescriptor',
	{
	  streamMode    = asn1_NOVALUE,
	  reserveValue  = asn1_NOVALUE,
	  reserveGroup  = asn1_NOVALUE,
	  propertyParms = asn1_NOVALUE
	}). % with extension mark

-record('IndAudPropertyParm',
	{
	  name
	}). % with extension mark

-record('IndAudLocalRemoteDescriptor',
	{
	  propGroupID = asn1_NOVALUE,
	  propGrps
	}). % with extension mark

%% BUGBUG
%% In text, it can only be one of them in each record.
%% So, in case it's eventBufferControl or serviceState
%% propertyParms will be an empty list.
-record('IndAudTerminationStateDescriptor',
	{
	  propertyParms = [],  %% Optional in text...
	  eventBufferControl = asn1_NOVALUE,
	  serviceState       = asn1_NOVALUE
	}). % with extension mark

-record('IndAudEventsDescriptor',
	{
	  requestID = asn1_NOVALUE,  %% Only optional in ASN.1
	  pkgdName,
	  streamID  = asn1_NOVALUE
	}). % with extension mark

-record('IndAudEventBufferDescriptor',
	{
	  eventName,
	  %% This is an ugly hack to allow the eventParameterName
	  %% which only exist in text!! 
	  %% streamID = asn1_NOVALUE | integer() | 
	  %%            {eventParameterName, Name}  <- BUGBUG: ONLY IN TEXT
	  %% Note that the binary codecs will fail to encode
	  %% if the streamID is not aither asn1_NOVALUE or an integer()
	  %% So it is recommended to refrain from using this text feature...
	  streamID = asn1_NOVALUE

	  %% eventParameterName = asn1_NOVALUE %% BUGBUG: ONLY IN TEXT

	}). % with extension mark

-record('IndAudSeqSigList',
	{
	  id,
	  signalList  = asn1_NOVALUE  %% Only in ASN1
	}). % with extension mark

-record('IndAudSignal',
	{
	  signalName,
	  streamID = asn1_NOVALUE %% Optional in ASN1 & non-existent in text
	}). % with extension mark

-record('IndAudDigitMapDescriptor',
	{
	  digitMapName = asn1_NOVALUE  %% OPTIONAL in ASN.1 but not in text
	}). 

-record('IndAudStatisticsDescriptor',
	{
	  statName
	}). 

-record('IndAudPackagesDescriptor',
	{
	  packageName,
	  packageVersion
	}). % with extension mark


%% --- v2 end   ---


-record('NotifyRequest',
	{
	  terminationID = [], 
	  observedEventsDescriptor, 
	  errorDescriptor = asn1_NOVALUE
	 }). % with extension mark

-record('NotifyReply',
	{
	  terminationID   = [], 
	  errorDescriptor = asn1_NOVALUE
	 }). % with extension mark

-record('ObservedEventsDescriptor',
	{
	  requestId, 
	  observedEventLst = []
	 }).

-record('ObservedEvent',
	{
	  eventName, 
	  streamID = asn1_NOVALUE, 
	  eventParList = [], 
	  timeNotation = asn1_NOVALUE
	 }). % with extension mark

%% This value field of this record is already encoded and will
%% be inserted as is.
%% This record could be used either when there is a bug in the
%% encoder or if an "external" package, unknown to the megaco app,
%% where the value part requires a special encode.
-record(megaco_event_parameter,
	{
	  name, 
	  value
	 }). 

-record('EventParameter',
	{
	  eventParameterName, 
	  value,
	  extraInfo = asn1_NOVALUE
	 }). % with extension mark

-record('ServiceChangeRequest',
	{
	  terminationID = [], 
	  serviceChangeParms
	 }). % with extension mark

-record('ServiceChangeReply',
	{
	  terminationID = [], 
	  serviceChangeResult = []
	 }). % with extension mark

-record('TerminationID',
	{
	  wildcard, 
	  id
	 }). % with extension mark

-record('MediaDescriptor',
	{
	  termStateDescr = asn1_NOVALUE, 
	  streams        = asn1_NOVALUE
	 }). % with extension mark

-record('StreamDescriptor',
	{
	  streamID, 
	  streamParms
	 }).

-record('StreamParms',
	{
	  localControlDescriptor = asn1_NOVALUE, 
	  localDescriptor = asn1_NOVALUE, 
	  remoteDescriptor = asn1_NOVALUE,
	  
	  %% with extension mark -- prev3a --

	  statisticsDescriptor   = asn1_NOVALUE
	 }). 

-record('LocalControlDescriptor',
	{
	  streamMode   = asn1_NOVALUE, 
	  reserveValue = asn1_NOVALUE, 
	  reserveGroup = asn1_NOVALUE, 
	  propertyParms = []
	 }). % with extension mark

-record('PropertyParm',
	{
	  name, 
	  value, 
	  extraInfo = asn1_NOVALUE
	 }). % with extension mark

-record('LocalRemoteDescriptor',
	{
	  propGrps = []
	 }). % with extension mark

-record('TerminationStateDescriptor',
	{
	  propertyParms = [], 
	  eventBufferControl = asn1_NOVALUE, 
	  serviceState = asn1_NOVALUE
	 }). % with extension mark

-record('MuxDescriptor',
	{
	  muxType, 
	  termList = [],
	  nonStandardData = asn1_NOVALUE
	 }). % with extension mark

-record('EventsDescriptor',
	{
	  requestID,
	  %% BUGBUG: IG 6.82 was withdrawn
	  %% requestID = asn1_NOVALUE, 
	  eventList = []
	 }). % with extension mark

-record('RequestedEvent',
	{
	  pkgdName, 
	  streamID = asn1_NOVALUE, 
	  eventAction = asn1_NOVALUE, 
	  evParList = []
	 }). % with extension mark

-record('RequestedActions',
	{
	  keepActive = asn1_NOVALUE, 
	  eventDM = asn1_NOVALUE, 
	  secondEvent = asn1_NOVALUE, 
	  signalsDescriptor = asn1_NOVALUE
	 }). % with extension mark

-record('SecondEventsDescriptor',
	{
	  requestID, 
	  %% BUGBUG: IG 6.82 was withdrawn
	  %% requestID = asn1_NOVALUE, 
	  eventList = []
	 }). % with extension mark

-record('SecondRequestedEvent',
	{
	  pkgdName, 
	  streamID = asn1_NOVALUE, 
	  eventAction = asn1_NOVALUE, 
	  evParList = []
	 }). % with extension mark

-record('SecondRequestedActions',
	{
	  keepActive = asn1_NOVALUE, 
	  eventDM = asn1_NOVALUE, 
	  signalsDescriptor = asn1_NOVALUE
	 }). % with extension mark

-record('EventSpec',
	{
	  eventName, 
	  streamID = asn1_NOVALUE, 
	  eventParList = []
	 }). % with extension mark

-record('SeqSigList',
	{
	  id, 
	  signalList = []
	 }).

-record('Signal',
	{
	  signalName, 
	  streamID = asn1_NOVALUE, 
	  sigType = asn1_NOVALUE, 
	  duration = asn1_NOVALUE, 
	  notifyCompletion = asn1_NOVALUE, 
	  keepActive = asn1_NOVALUE, 
	  sigParList = [],

	  %% with extension mark -- prev3a --

	  direction = asn1_NOVALUE,
	  requestID = asn1_NOVALUE
	 }). 

-record('SigParameter',
	{
	  sigParameterName, 
	  value,
	  extraInfo = asn1_NOVALUE
	 }). % with extension mark

-record('ModemDescriptor',
	{
	  mtl, 
	  mpl,
	  nonStandardData = asn1_NOVALUE
	 }).

-record('DigitMapDescriptor',
	{
	  digitMapName = asn1_NOVALUE, 
	  digitMapValue = asn1_NOVALUE
	 }).

-record('DigitMapValue',
	{
	  startTimer = asn1_NOVALUE, 
	  shortTimer = asn1_NOVALUE, 
	  longTimer = asn1_NOVALUE, 
	  digitMapBody,
	  %% with extensions
	  durationTimer = asn1_NOVALUE
	 }). 

-record('ServiceChangeParm',
	{
	  serviceChangeMethod, 
	  serviceChangeAddress = asn1_NOVALUE, 
	  serviceChangeVersion = asn1_NOVALUE, 
	  serviceChangeProfile = asn1_NOVALUE, 
	  serviceChangeReason, 
	  serviceChangeDelay = asn1_NOVALUE, 
	  serviceChangeMgcId = asn1_NOVALUE, 
	  timeStamp = asn1_NOVALUE,
	  nonStandardData = asn1_NOVALUE,

	  %% with extension mark -- prev3a (serviceChangeIncompleteFlag) --

	  serviceChangeInfo = asn1_NOVALUE,
	  serviceChangeIncompleteFlag = asn1_NOVALUE
	 }). 

-record('ServiceChangeResParm',
	{
	  serviceChangeMgcId = asn1_NOVALUE, 
	  serviceChangeAddress = asn1_NOVALUE, 
	  serviceChangeVersion = asn1_NOVALUE, 
	  serviceChangeProfile = asn1_NOVALUE,
	  timeStamp = asn1_NOVALUE
	 }). % with extension mark


%% This is the actual ASN.1 type and it is as this it will
%% be represented if the encoding config [native] is chosen.
%% %% String of at least 1 character and at most 67 characters (ASN.1). 
%% %% 64 characters for name, 1 for "/", 2 for version to match ABNF
%% -record('ServiceChangeProfile',
%% 	{
%% 	  profileName
%% 	 }
%%        ).

-record('ServiceChangeProfile',
	{
	  profileName, 
	  version
	 }).


-record('PackagesItem',
	{
	  packageName, 
	  packageVersion
	 }). % with extension mark

-record('StatisticsParameter',
	{
	  statName, 
	  statValue = asn1_NOVALUE
	 }).

-record('TimeNotation',
	{
	  date, 
	  time
	 }).

