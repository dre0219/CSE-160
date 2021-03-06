interface CommandHandler{
   // Events
   event void ping(uint16_t destination, uint8_t *payload);
   event void printNeighbors();
   event void printRouteTable();
   event void printLinkState();
   event void printDistanceVector();
   event void printMessage(uint8_t *payload);
   event void setTestServer(uint8_t port);
   event void setTestClient(uint8_t dest, uint8_t srcPort, uint8_t destPort, uint16_t payload);
   event void setClientClose(uint8_t dest, uint8_t srcPort, uint8_t destPort);
   event void startChatServer();
   event void chat(char* msg);
   // event void chatHello(char* username, uint8_t clientPort);
   // event void chatMsg(char* msg);
   // event void chatWhisper(char* username, char* msg);
   // event void chatListUsr();
}