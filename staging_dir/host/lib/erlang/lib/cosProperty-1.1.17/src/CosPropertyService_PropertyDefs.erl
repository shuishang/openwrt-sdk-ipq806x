%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosPropertyService_PropertyDefs
%% Source: /net/isildur/ldisk/daily_build/17_prebuild_opu_o.2015-03-31_14/otp_src_17/lib/cosProperty/src/CosProperty.idl
%% IC vsn: 4.3.6
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosPropertyService_PropertyDefs').
-ic_compiled("4_3_6").


-include("CosPropertyService.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_sequence,
            {tk_struct,"IDL:omg.org/CosPropertyService/PropertyDef:1.0",
                "PropertyDef",
                [{"property_name",{tk_string,0}},
                 {"property_value",tk_any},
                 {"property_mode",
                  {tk_enum,
                      "IDL:omg.org/CosPropertyService/PropertyModeType:1.0",
                      "PropertyModeType",
                      ["normal","read_only","fixed_normal","fixed_readonly",
                       "undefined"]}}]},
            0}.

%% returns id
id() -> "IDL:omg.org/CosPropertyService/PropertyDefs:1.0".

%% returns name
name() -> "CosPropertyService_PropertyDefs".


