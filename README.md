## Repo to reproduce

https://github.com/boltops-tools/jets/issues/480

## Debugging - Reproduction

    $ curl https://yvqldjd1wb.execute-api.us-west-2.amazonaws.com/dev/foo1-a ; echo
    {"foo":1,"action":"a","before_callback":false,"message":"should be false"}
    $ curl https://yvqldjd1wb.execute-api.us-west-2.amazonaws.com/dev/foo1-a ; echo
    {"foo":1,"action":"a","before_callback":false,"message":"should be false"}
    
    $ curl https://yvqldjd1wb.execute-api.us-west-2.amazonaws.com/dev/foo1-b ; echo
    {"foo":1,"action":"b","before_callback":false,"message":"should be false"}
    $ curl https://yvqldjd1wb.execute-api.us-west-2.amazonaws.com/dev/foo1-b ; echo
    {"foo":1,"action":"b","before_callback":false,"message":"should be false"}
    
    $ curl https://yvqldjd1wb.execute-api.us-west-2.amazonaws.com/dev/foo2-a ; echo
    {"foo":2,"action":"a","before_callback":false,"message":"should be true"} # INCORRECT
    $ curl https://yvqldjd1wb.execute-api.us-west-2.amazonaws.com/dev/foo2-a ; echo
    {"foo":2,"action":"a","before_callback":true,"message":"should be true"}
    
    $ curl https://yvqldjd1wb.execute-api.us-west-2.amazonaws.com/dev/foo2-b ; echo
    {"foo":2,"action":"b","before_callback":false,"message":"should be true"} # INCORRECT
    $ curl https://yvqldjd1wb.execute-api.us-west-2.amazonaws.com/dev/foo2-b ; echo
    {"foo":2,"action":"b","before_callback":true,"message":"should be true"}
    $
