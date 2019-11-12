-module(sockjs_json).

-export([encode/1, decode/1]).

%% --------------------------------------------------------------------------

-spec encode(any()) -> iodata().
encode(Thing) ->
    jiffy:encode(Thing).

-spec decode(iodata()) -> {ok, any()} | {error, any()}.
decode(Encoded) ->
    try jiffy:decode(Encoded) of
        V -> {ok, V}
    catch
        E -> E
    end.
