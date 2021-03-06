-module(eovsdb_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    application:start(jsone),
    application:start(uuid),
    eovsdb_sup:start_link().

stop(_State) ->
    ok.
