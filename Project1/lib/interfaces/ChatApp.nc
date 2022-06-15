#include "../includes/packet.h"
#include "../../includes/socket.h"


interface ChatApp{
    command void startChatServer();
    command void chat(char* msg);
}