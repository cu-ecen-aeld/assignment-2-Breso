#include<stdio.h>
#include<syslog.h>
#include<stdlib.h>

int main(int argc, char *argv[]){
	openlog(NULL,0,LOG_USER);
	if(argc>1){
		const char *filename = argv[1];
		const char *string = argv[2];
		FILE *file = fopen(filename,"a");
		if(file){
			syslog(LOG_DEBUG,"Writing %s to %s",string,filename);
			fprintf(file,"%s",string);
		}else{
			syslog(LOG_ERR,"Can't open file %s",filename);
			exit(1);
		}
	}else{
		syslog(LOG_ERR,"Not enough parameters");
		exit(1);
	}
}
