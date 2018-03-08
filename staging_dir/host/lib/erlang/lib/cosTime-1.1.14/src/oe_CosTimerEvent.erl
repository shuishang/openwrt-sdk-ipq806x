%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: oe_CosTimerEvent
%% Source: /net/isildur/ldisk/daily_build/17_prebuild_opu_o.2015-03-31_14/otp_src_17/lib/cosTime/src/CosTimerEvent.idl
%% IC vsn: 4.3.6
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(oe_CosTimerEvent).
-ic_compiled("4_3_6").


-include_lib("orber/include/ifr_types.hrl").

%% Interface functions

-export([oe_register/0, oe_unregister/0, oe_get_module/5]).
-export([oe_dependency/0]).



oe_register() ->
    OE_IFR = orber_ifr:find_repository(),

    register_tests(OE_IFR),

    _OE_1 = oe_get_top_module(OE_IFR, "IDL:omg.org/CosTimerEvent:1.0", "CosTimerEvent", "1.0"),

    orber_ifr:'ModuleDef_create_enum'(_OE_1, "IDL:omg.org/CosTimerEvent/TimeType:1.0", "TimeType", "1.0", ["TTAbsolute","TTRelative","TTPeriodic"]),

    orber_ifr:'ModuleDef_create_enum'(_OE_1, "IDL:omg.org/CosTimerEvent/EventStatus:1.0", "EventStatus", "1.0", ["ESTimeSet","ESTimeCleared","ESTriggered","ESFailedTrigger"]),

    orber_ifr:'ModuleDef_create_struct'(_OE_1, "IDL:omg.org/CosTimerEvent/TimerEventT:1.0", "TimerEventT", "1.0", [#structmember{name="utc", type={tk_struct,"IDL:omg.org/TimeBase/UtcT:1.0",
                                   "UtcT",
                                   [{"time",tk_ulonglong},
                                    {"inacclo",tk_ulong},
                                    {"inacchi",tk_ushort},
                                    {"tdf",tk_short}]}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_struct,
                                               "IDL:omg.org/TimeBase/UtcT:1.0",
                                               "UtcT",
                                               [{"time",tk_ulonglong},
                                                {"inacclo",tk_ulong},
                                                {"inacchi",tk_ushort},
                                                {"tdf",tk_short}]})}, #structmember{name="event_data", type=tk_any, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_any)}]),

    _OE_2 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0", "TimerEventHandler", "1.0", []),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_2, "IDL:omg.org/CosTimerEvent/TimerEventHandler/status:1.0", "status", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_enum,
                                               "IDL:omg.org/CosTimerEvent/EventStatus:1.0",
                                               "EventStatus",
                                               ["ESTimeSet","ESTimeCleared",
                                                "ESTriggered",
                                                "ESFailedTrigger"]}), 'ATTR_READONLY'),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:omg.org/CosTimerEvent/TimerEventHandler/time_set:1.0", "time_set", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean), 'OP_NORMAL', [#parameterdescription{name="uto", type={tk_objref,
                                        "IDL:omg.org/CosTime/UTO:1.0","UTO"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/UTO:1.0",
                                               "UTO"}), mode='PARAM_OUT'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:omg.org/CosTimerEvent/TimerEventHandler/set_timer:1.0", "set_timer", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="trigger_time", type={tk_objref,
                                                 "IDL:omg.org/CosTime/UTO:1.0",
                                                 "UTO"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/UTO:1.0",
                                               "UTO"}), mode='PARAM_IN'}
, #parameterdescription{name="time_type", type={tk_enum,
                                              "IDL:omg.org/CosTimerEvent/TimeType:1.0",
                                              "TimeType",
                                              ["TTAbsolute","TTRelative",
                                               "TTPeriodic"]}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_enum,
                                               "IDL:omg.org/CosTimerEvent/TimeType:1.0",
                                               "TimeType",
                                               ["TTAbsolute","TTRelative",
                                                "TTPeriodic"]}), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:omg.org/CosTimerEvent/TimerEventHandler/cancel_timer:1.0", "cancel_timer", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean), 'OP_NORMAL', [], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:omg.org/CosTimerEvent/TimerEventHandler/set_data:1.0", "set_data", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="event_data", type=tk_any, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_any), mode='PARAM_IN'}
], [], []),

    _OE_3 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosTimerEvent/TimerEventService:1.0", "TimerEventService", "1.0", []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_3, "IDL:omg.org/CosTimerEvent/TimerEventService/register:1.0", "register", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0",
                                               "TimerEventHandler"}), 'OP_NORMAL', [#parameterdescription{name="data", type=tk_any, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_any), mode='PARAM_IN'}
, #parameterdescription{name="event_interface", type={tk_objref,
                                                    "IDL:omg.org/CosEventComm/PushConsumer:1.0",
                                                    "PushConsumer"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosEventComm/PushConsumer:1.0",
                                               "PushConsumer"}), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_3, "IDL:omg.org/CosTimerEvent/TimerEventService/unregister:1.0", "unregister", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="timer_event_handler", type={tk_objref,
                                                        "IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0",
                                                        "TimerEventHandler"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0",
                                               "TimerEventHandler"}), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_3, "IDL:omg.org/CosTimerEvent/TimerEventService/event_time:1.0", "event_time", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/UTO:1.0",
                                               "UTO"}), 'OP_NORMAL', [#parameterdescription{name="timer_event", type={tk_struct,
                                                "IDL:omg.org/CosTimerEvent/TimerEventT:1.0",
                                                "TimerEventT",
                                                [{"utc",
                                                  {tk_struct,
                                                   "IDL:omg.org/TimeBase/UtcT:1.0",
                                                   "UtcT",
                                                   [{"time",tk_ulonglong},
                                                    {"inacclo",tk_ulong},
                                                    {"inacchi",tk_ushort},
                                                    {"tdf",tk_short}]}},
                                                 {"event_data",tk_any}]}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_struct,
                                               "IDL:omg.org/CosTimerEvent/TimerEventT:1.0",
                                               "TimerEventT",
                                               [{"utc",
                                                 {tk_struct,
                                                  "IDL:omg.org/TimeBase/UtcT:1.0",
                                                  "UtcT",
                                                  [{"time",tk_ulonglong},
                                                   {"inacclo",tk_ulong},
                                                   {"inacchi",tk_ushort},
                                                   {"tdf",tk_short}]}},
                                                {"event_data",tk_any}]}), mode='PARAM_IN'}
], [], []),

    ok.


%% General IFR registration checks.
register_tests(OE_IFR)->
  re_register_test(OE_IFR),
  include_reg_test(OE_IFR).


%% IFR type Re-registration checks.
re_register_test(OE_IFR)->
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/CosTimerEvent/TimeType:1.0") of
    []  ->
      true;
    _ ->
      exit({allready_registered,"IDL:omg.org/CosTimerEvent/TimeType:1.0"})
 end.


%% IFR registration checks for included idl files.
include_reg_test(OE_IFR) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/CosEventComm:1.0") of
    [] ->
      exit({unregistered,"IDL:omg.org/CosEventComm:1.0"});
    _  ->
      true
  end,
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/TimeBase:1.0") of
    [] ->
      exit({unregistered,"IDL:omg.org/TimeBase:1.0"});
    _  ->
      true
  end,
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/CosTime:1.0") of
    [] ->
      exit({unregistered,"IDL:omg.org/CosTime:1.0"});
    _  ->
      true
  end,
  true.


%% Fetch top module reference, register if unregistered.
oe_get_top_module(OE_IFR, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'Repository_create_module'(OE_IFR, ID, Name, Version);
    Mod  ->
      Mod
   end.

%% Fetch module reference, register if unregistered.
oe_get_module(OE_IFR, OE_Parent, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'ModuleDef_create_module'(OE_Parent, ID, Name, Version);
    Mod  ->
      Mod
   end.



oe_unregister() ->
    OE_IFR = orber_ifr:find_repository(),

    oe_destroy(OE_IFR, "IDL:omg.org/CosTimerEvent/TimerEventService:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosTimerEvent/TimerEventT:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosTimerEvent/EventStatus:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosTimerEvent/TimeType:1.0"),
    oe_destroy_if_empty(OE_IFR, "IDL:omg.org/CosTimerEvent:1.0"),
    ok.


oe_destroy_if_empty(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    case orber_ifr:contents(Ref, 'dk_All', 'true') of
		[] ->
		    orber_ifr:destroy(Ref),
		    ok;
		_ ->
		    ok
	    end
    end.

oe_destroy(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    orber_ifr:destroy(Ref),
	    ok
    end.



%% Idl file dependency list function
oe_dependency() ->

    {"/net/isildur/ldisk/daily_build/17_prebuild_opu_o.2015-03-31_14/otp_src_17/lib/cosTime/src/CosTimerEvent.idl",
     ["/net/isildur/ldisk/daily_build/17_prebuild_opu_o.2015-03-31_14/otp_src_17/lib/cosEvent/src/CosEventComm.idl",
      "TimeBase.idl","CosTime.idl"]}.

