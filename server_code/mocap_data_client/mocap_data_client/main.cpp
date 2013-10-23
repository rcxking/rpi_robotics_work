/*
 * main.cpp - Windows 7 Client that sends camera data for the Schunk
 * Powerball through TCP/IP to the Powerball's server node on the Ubuntu 
 * machine.
 *
 * Help from: http://msdn.microsoft.com/en-us/library/windows/desktop/ms737591(v=vs.85).aspx
 *
 * Bryant Pong
 * 10/23/13
 * Last Updated: 10/23/13 - 3:53 PM
 */

/*
 * We are using the Windows Sockets V2 library; not the V1 library.
 * We also need to include the "Windows.h" header file to access the Windows
 * Sockets functions; by default, Windows.h will include V1 library.  By 
 * defining the following macro, Visual Studio will NOT include the V1 library.
 */
#define WIN32_LEAN_AND_MEAN

// Windows-Specific Libraries:
// Windows.h OS Library:
#include <Windows.h>

// Windows Sockets V2 Library:
#include <WinSock2.h>

// Windows TCP/IP Library that includes struct definitions for TCP/IP Sockets:
#include <WS2tcpip.h>
// End Windows-Specific Libraries

// STL Libraries:
#include <cstdlib>
#include <cstdio>
#include <iostream>
#include <fstream>
// End STL Libraries

// Pragmas required to link the sockets libraries:
#pragma comment (lib, "Ws2_32.lib")
#pragma comment (lib, "Mswsock.lib")
#pragma comment (lib, "AdvApi32.lib")

// Buffer Length - How much data (in characters) that can be received at a time
#define BUFLEN 1024
// Port number for the server/client to listen on:
#define PORT "8127" // IT'S OVER 9000!

// Main function:
int _cdecl main(int argc, char** argv) {

	// Windows structure to hold the sockets information:
	WSADATA wsaData;

	// Create the actual socket used for connection:
	SOCKET ConnectSocket = INVALID_SOCKET;

	// Create a struct to hold the buffer length and the port number:
	struct addrinfo *result = NULL,
					*ptr    = NULL,
					hints;

	// Buffer to send out data:
	char* sendBuffer = "This is a test";

	// Buffer to receive the data:
	char recvBuf[BUFLEN];
	int iResult, recvbuflen;
	recvbuflen = BUFLEN;

	/*
	 * We're passing the IP Address as a command-line argument; check if
	 * we have that address; return a usage statement otherwise.
	 */
	if(argc != 2) {
		printf("Usage: ./main <server ip address>\n");
		exit(1);
	} // End if

	// Initialize the Windows Socket Protocol:

	// We are using Windows Sockets version 2.2 (the latest one):
	iResult = WSAStartup(MAKEWORD(2,2), &wsaData);
	// Check if the sockets initialization succeeded:
	if(iResult != 0) {
		printf("WSAStartup failed with error: %d\n", iResult);
		exit(1);
	} // End if

	// It's now time to fill out the hints struct with the correct protocol (TCP/IP):
	ZeroMemory(&hints, sizeof(hints));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_protocol = IPPROTO_TCP;

	// Get the IP Address of the server and set it:
	iResult = getaddrinfo(argv[1], PORT, &hints, &result);
	if(iResult != 0) {
		printf("getaddrinfo failed with error: %d\n", iResult);
		// We failed in getting the IP Address; clean up the Windows Sockets:
		WSACleanup();
		exit(1);
	} // End if

	// Keep trying to connect to an IP Address until success:
	for(ptr = result; ptr != NULL; ptr = ptr->ai_next) {
		// Initialize the socket for connecting to the server:
		ConnectSocket = socket(ptr->ai_family, ptr->ai_socktype, ptr->ai_protocol);

		// If the socket failed, exit:
		if(ConnectSocket == INVALID_SOCKET) {
			printf("socket() failed with error: %d\n", WSAGetLastError());
			WSACleanup();
			exit(1);
		} // End if

		// After creating a valid socket, connect to the server:
		iResult = connect(ConnectSocket, ptr->ai_addr, (int) ptr->ai_addrlen);
		if(iResult == SOCKET_ERROR) {
			closesocket(ConnectSocket);
			ConnectSocket = INVALID_SOCKET;
			continue;
		} // End if

		// At this point, we have connected to the server; no need to keep creating sockets:
		break;
	} // End if

	// Check if the socket is still valid:
	freeaddrinfo(result);
	if(ConnectSocket == INVALID_SOCKET) {
		printf("Unable to connect to server!\n");
		WSACleanup();
		exit(1);
	} // End if

	// Send the buffer:
	iResult = send(ConnectSocket, sendBuffer, (int) strlen(sendBuffer), 0);
	if(iResult == SOCKET_ERROR) {
		printf("send() failed with error: %d\n", WSAGetLastError());
		closesocket(ConnectSocket);
		WSACleanup();
		exit(1);
	} // End if

	printf("Bytes sent: %d\n", iResult);

	// Shutdown the connection because no more data will be sent:
	iResult = shutdown(ConnectSocket, SD_SEND);
	if(iResult == SOCKET_ERROR) {
		printf("shutdown() failed with error: %d\n", WSAGetLastError());
		closesocket(ConnectSocket);
		WSACleanup();
		exit(1);
	} // End if

	// Cleanup:
	closesocket(ConnectSocket);
	WSACleanup();
	 

	return 0;
} // End function main