#include "crow.h"

using namespace::std;

int main(int argc, char* argv[]) {
    crow::SimpleApp app;

    CROW_ROUTE(app, "/")
        ([](){
            crow::json::wvalue x;
            x["message"] = "Hello, World!";
            return x;
        });

    char* port = getenv("PORT");
    uint16_t iPort = static_cast<uint16_t>(
        port != NULL? stoi(port) : 10000
    );
    cout << "PORT: " << iPort << "\n";

    app.port(iPort).multithreaded().run();
};
