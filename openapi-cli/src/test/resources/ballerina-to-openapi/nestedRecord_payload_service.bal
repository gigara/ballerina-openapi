//import ballerina/http;
//
//listener http:Listener helloEp = new (9090);
//
//type Pet record {
//    int id;
//    string name;
//    string tag?;
// };
//
// type Dog record {
//     Pet perant;
//     boolean bark;
//  };
// service /payloadV on helloEp {
//     resource function post hi(http:Caller caller, http:Request request, @http:Payload {} Dog payload) {
//
//     }}

import ballerina/http;

public type clientConfig record {
    string serviceUrl;
    http:ClientConfiguration httpClientConfig;
};

public client class 'client {
    public http:Client clientEp;
    public clientConfig config;

    public function init(clientConfig config) {
        http:Client httpEp = checkpanic new(config.serviceUrl, {auth: config.httpClientConfig.auth, cache:
            config.httpClientConfig.cache});
        self.clientEp = httpEp;
        self.config = config;
    }
}

