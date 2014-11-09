Set-up a Docker Registry with Plain Text Authentication
--
This creates a registry that runs locally with SSL and authentication set-up.

Pre-requisites, fig (on OS-X with Homebrew):

    brew install fig

To build:

    fig up	
    
If you're using boot2docker, set-up port forward:
 
    VBoxManage controlvm boot2docker-vm natpf1 5080,tcp,127.0.0.1,5080,,5080
    VBoxManage controlvm boot2docker-vm natpf1 5443,tcp,127.0.0.1,5443,,5443

Test it:

    ./test.sh
    
Remove the forward if you want:

    VBoxManage controlvm boot2docker-vm natpf1 delete 8443

Based on:
 
* <https://medium.com/@deeeet/building-private-docker-registry-with-basic-authentication-with-self-signed-certificate-using-it-e6329085e612>.
* <http://nategood.com/client-side-certificate-authentication-in-ngi>