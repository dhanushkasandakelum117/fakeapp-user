import ballerina/http;

type User record {
    string username;
    string userType;
    string email;
    string password;
};

service / on new http:Listener(9090) {
    resource function get .() returns error?|string {
        return "working";
    }

    resource function post register (@http:Payload User user) returns error?|string {
        return "User payload --> " + user.username;        
    }
}
