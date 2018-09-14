-module(interlay_work_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

-include("interlay_work.hrl").

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    interlay_work_sup:start_link().

stop(_State) ->
    ok.
