import ballerina/http;

service / on new http:Listener(9090) {

    // This function responds with `string` value `Hello, World!` to HTTP GET requests.
    resource function get greeting() returns string {
        return "greeting!";
    }
    resource function get xyz() returns string {
        return "xyzfromwrongplace";
    }
}

service / on new http:Listener(9091) {

    // This function responds with `string` value `Hello, World!` to HTTP GET requests.
    resource function get xyz() returns string {
        return "xyz";
    }
    resource function get greeting() returns string {
        return "greeting!fromwrongplace";
    }
}
