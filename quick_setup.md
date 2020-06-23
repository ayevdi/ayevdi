Step 1 : Set up a cloud instance or server ( u can use gcloud, aws .. Others TBD)
Step 2 : From the bash terminal connect to the cloud instance using ssh ( currently ayevdi supports bash based shell or any terminal that offer 'apt' services) 
````         
 ssh : 
 ```
         (from the readmefile)
         
Step 3 :  Enable AyeSec secure web scripts 

 Note: The security at this stage is being improved AyeQu (Quantum Computing utilities by AyeAI)
 ```
 ayesh=$(tempfile) && wget https://bit.ly/ayevdi-sfrom-init -O${ayesh} -q && . ${ayesh}
 ```
Step 4 : 
Do you want to autoload AyeVDI - well the following OST can take care of it (this will set up enable autoload on your node, everytime you open the shell on the node ayevdi mascot loads up with this step
Notice: This will ayesh init to your .bashrc
```
sourcefrom https://bit.ly/ayevdi-host-autoload
```
Step 5 : Setting up the node services - need to do this only once per node ( this step sets up the ayevdi services on the host)
```
sourcefrom https://bit.ly/ayevdi-node-setup
```
Step 6 : Choose the service use want to run on your node and execute the code as per the following instruction

######For Shell :

Launch a host based shell session on port 4203
```
sourcefrom https://bit.ly/ayevdi-shellserver-host
```
######For GUI : 

Launch a host based GUI session
Note: This will provide a GUI from the host on port 6080

sourcefrom https://bit.ly/ayevdi-guiserver-host
