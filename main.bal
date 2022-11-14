import ballerina/http;

type User record {
    string username;
    string userType;
    string email;
    string password;
};

type UserLogin record {
    string email;
    string password;
};

service / on new http:Listener(9090) {
    resource function get .() returns error?|string {
        return "working";
    }

    resource function post register (@http:Payload User user) returns error?|string {
        return "User register payload --> " + user.username;        
    }

    resource function post login (@http:Payload UserLogin userLogin) returns error?|string {
        return "User login payload --> " + userLogin.email;        
    }
}
