#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <unistd.h>
#include <cstring>
#include <string>
#include <cstdlib>
#include <arpa/inet.h>

#define BUFFER_SIZE 1024

const char* msg = "ack";

int main(int argc, char* argv[]) {

	char buffer[BUFFER_SIZE];

	int sock, newsock, len, n, pid;
	unsigned int fromlen;

	struct sockaddr_in server;
	struct sockaddr_in client;

	unsigned short port = 8127;

	sock = socket(PF_INET, SOCK_STREAM, 0);

	if(sock < 0) {
		perror("socket()");
		exit(1);
	}

	server.sin_family = PF_INET;
	server.sin_addr.s_addr = INADDR_ANY;

	server.sin_port = htons(port);
	len = sizeof(server);

	if(bind(sock, (struct sockaddr *)&server, len) < 0) {
		perror("bind()");
		exit(1);
	} // End if

	fromlen = sizeof(client);
	listen(sock, 5);
	printf("Listener socket created and bound to port %d\n", port);

	while(1) {
		printf("Blocked on accept()\n");
		newsock = accept(sock, (struct sockaddr *)& client, &fromlen);
		printf("Accepted client connection\n");
		fflush(NULL);

		pid = fork();
		if(pid == 0) {
			sleep(5);
			n = recv(newsock, buffer, BUFFER_SIZE - 1, 0);
			if(n < 1) {
				perror("recv()");
			} else {
				buffer[n] = '\0';
				printf("Received message from %s: %s\n",
						inet_ntoa((struct in_addr) client.sin_addr),
						buffer);
			}
	
			n = send(newsock, msg, strlen(msg), 0);
			if(n < int(strlen(msg))) {
				perror("Write()");
			}

			close(newsock);
			exit(0);
		}

		close(newsock);
	}

	return 0;
} // End function main
