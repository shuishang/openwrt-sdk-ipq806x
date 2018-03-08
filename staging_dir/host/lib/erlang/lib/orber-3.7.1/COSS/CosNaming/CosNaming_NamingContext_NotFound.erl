%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNaming_NamingContext_NotFound
%% Source: /net/isildur/ldisk/daily_build/17_prebuild_opu_o.2015-03-31_14/otp_src_17/lib/orber/COSS/CosNaming/cos_naming.idl
%% IC vsn: 4.3.6
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNaming_NamingContext_NotFound').
-ic_compiled("4_3_6").


-include("CosNaming_NamingContext.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_except,"IDL:omg.org/CosNaming/NamingContext/NotFound:1.0",
            "NotFound",
            [{"why",
              {tk_enum,
                  "IDL:omg.org/CosNaming/NamingContext/NotFoundReason:1.0",
                  "NotFoundReason",
                  ["missing_node","not_context","not_object"]}},
             {"rest_of_name",
              {tk_sequence,
                  {tk_struct,"IDL:omg.org/CosNaming/NameComponent:1.0",
                      "NameComponent",
                      [{"id",{tk_string,0}},{"kind",{tk_string,0}}]},
                  0}}]}.

%% returns id
id() -> "IDL:omg.org/CosNaming/NamingContext/NotFound:1.0".

%% returns name
name() -> "CosNaming_NamingContext_NotFound".



