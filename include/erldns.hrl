-include_lib("dns/include/dns_records.hrl").

-record(zone, {
    name :: dns:dname(),
    version :: binary(),
    authority = [] :: [dns:rr()],
    record_count = 0 :: non_neg_integer(),
    records = [] :: [dns:rr()],
    records_by_name ::  dict:dict(binary(), [#dns_rr{}]) | trimmed,
    records_by_type :: [dns:rr()]
  }).

-record(authorities, {
    owner_name,
    ttl,
    class,
    name_server,
    email_addr,
    serial_num,
    refresh,
    retry,
    expiry,
    nxdomain
}).