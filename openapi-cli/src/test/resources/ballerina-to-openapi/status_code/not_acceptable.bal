import ballerina/log;
import ballerina/http;

service /payloadV on new http:Listener(8090) {
    resource function get hello(http:Request request) returns http:NotAcceptable|error? {
        log:printInfo("my log");
    }
}
