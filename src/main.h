#pragma once

#include <fstream>
#include <iostream>
#include <random>
#include <sstream>
#include <string>
#include <thread>
#include <time.h>
#ifdef WIN32
#include <Winsock2.h>
#include <wininet.h>
typedef uint32_t in_addr_t;
#else
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/types.h>
#endif // WIN32

#define STR_HELP "-p \t server port"

int httpServer();
int http(int sClient, in_addr_t sClinentAddr);
