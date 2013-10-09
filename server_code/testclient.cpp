/* client.c */

#include <cstring>
#include <cstdlib>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdio.h>
#include <strings.h> /* for bcopy */
#include <unistd.h>

#define BUFFER_SIZE 1024

const char *msg = "All your base belong to us";
const char *msg2 = "SPACECATZ";

int main()
{
  char buffer[ BUFFER_SIZE ];

  int sock, n;
  unsigned short port;
  struct sockaddr_in server;
  struct hostent *hp;

  sock = socket( PF_INET, SOCK_STREAM, 0 );
  if ( sock < 0 ) {
    perror( "socket()" );
    exit( 1 );
  }

  server.sin_family = PF_INET;
  hp = gethostbyname( "127.0.0.1" );  // localhost
  if ( hp == NULL ) {
    perror( "Unknown host" );
    exit( 1 );
  }

  /* could also use memcpy */
  bcopy( (char *)hp->h_addr, (char *)&server.sin_addr, hp->h_length );
  port = 8127;
  server.sin_port = htons( port );

  if ( connect( sock, (struct sockaddr *)&server, sizeof( server) ) < 0 ) {
    perror( "connect()" );
    exit( 1 );
  }

while ( 1 )
{
sleep( 5 );

  n = write( sock, msg, strlen( msg ) );
  if ( n < strlen( msg ) ) {
    perror( "write()" );
  }

  n = read( sock, buffer, 1024 );   // BLOCK
  if ( n < 1 ) {
    perror( "read()" );
  }
  else {
    buffer[n] = '\0';
    printf( "Received message from server: %s\n", buffer );
  }

 n = write( sock, msg2, strlen( msg2 ) );
  if ( n < strlen( msg2 ) ) {
    perror( "write()" );
  }

  n = read( sock, buffer, 1024 );   // BLOCK
  if ( n < 1 ) {
    perror( "read()" );
  }
  else {
    buffer[n] = '\0';
    printf( "Received message from server: %s\n", buffer );
  }

}

  close( sock );

  return 0;
}
