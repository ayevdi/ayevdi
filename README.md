# AyeVDI - Virtualized Deployment IaaS 
(Infrastructure as a Service for Scientific and Cognitive Computing - IaaS2C2 -> IaaS2aC2 -> IaSaC)

#### AyeVDI - Virtualized Deployment IaaS (VDI) by AyeAI

Copyright (C) 2019-2020 Abhishek Choudhary, Dr Srija Katta<br>
AyeVDI is claimed as a trademark and a businessmark by
the author in Inida and other geographies.<br>

NOTICE:
To all WHO IT MAY CONCERN,
Greetings,
All artifacts and methods in this project are offered with 
NO WARRANTY, and ZERO LIABILITY (Limited to INR 1/- only),
subject to the jurisdictions of courts in Hyderabad, India,
and solely in accordance with AyeAI SPL version 1, or later,
as expressed at the following URL and at the most current version
of https://raw.githubusercontent.com/ayeai/spl/master/LICENSE
incuding its clauses of automatic implicit update of license,
and unless in conflict with the terms and conditions of GNU GPL v2
shall apply with no retort to other GPL licenses, AND, These
terms and conditions are implied read, understood and accepted
by the access, or usage of these artifacts and methods which
must STRICTLY be IN ACCORDANCE, and this notice must be 
reproduced in derivatives along with the original assertions
of copyrights.

Note: These instructions are based on Ubuntu 18.04 LTS which is supported by Canonical until April 2023 (Ref: https://bit.ly/canonical-ubuntu https://bit.ly/ubuntu-release-cycle). Support of other distros, including future Ubuntu releases, is pertinent to resource availability.

```
# AYESEC:POST_SHS('18 lines')=9da1fc9afc1b85e1e81e78a53f97d4436d886182eec170ddd6c78ec71e64113d9ade4fd1bf969ed5bbe62baed9a575d2b5e3ccdc0383c27eb7a4b6bc71965afe
# AYESEC:STATUTORY_HEADER
if [ "${ayevdi_sourcefrom}" != "${HOME}/.ayevdi/ayevdi-sourcefrom" ]
then
  echo "AyeVDI by https://ayeai.xyz"
  echo "Copyright (C) 2019-2020 Abhishek Choudhary, Dr Srija Katta"
  echo ""
  echo "NO WARRANTY, and ZERO LIABILITY (Limited to INR 1/- only)"
  echo "Further usage of these software, artifacts or methods"
  echo "are subject to the 'latest' license agreement avaialble at"
  echo "https://raw.githubusercontent.com/ayeai/spl/master/LICENSE"
  echo ""
  echo "AyeVDI not activated. Please use the following command to"
  echo "activate AyeVDI"
  echo '  ayesh=$(tempfile) && wget https://bit.ly/ayevdi-sfrom-init -O${ayesh} -q && . ${ayesh}'
  echo ""
  exit
fi
# AYESEC:STATUTORY_HEADER_COMPLETED
# AYESEC:PREV_SHS('18 lines')=9da1fc9afc1b85e1e81e78a53f97d4436d886182eec170ddd6c78ec71e64113d9ade4fd1bf969ed5bbe62baed9a575d2b5e3ccdc0383c27eb7a4b6bc71965afe
```

## Simple introduction !!
While we wait for more descriptive articles to be written, here's some quick information on how to get started. AyeVDI is a virtuaized desktop IaaS. The core objective of AyeVDI is to deliver seamless application, desktop and service virtualization including HyperScale, Scientific and Cognitive Computing. We aspire to offer optimal and hardened convergence of VDI and HPC with utmost fluidity in user experience, with focussed support for Machine Learning, Deep Learning, Internet of Things, Robotics, Medical Devices and Healthcare Applications (fundamental building blocks for #ai4all and #ai4socialgood).

The core of AyeVDI consists of containers running domain targeted and role / scenario specific images. These are currently run on docker but the abstraction layers in the design allows for other containerization platforms to be used as well, such as Singularity, and our upcoming AyeCons platform. With OCI standards in vogue, compliant container platforms from any vendor / project suffice for the core functionality. As one implementation of our abstraction layer, the AyeVDI core functionality will be offered as Kubernetes pods as well - but thats for one of the next upcoming releases subject to project constraints. All our images for the containers are hosted on dockerhub and other public image registeries.

The core is encapsulated inside AyeVDI nodes. AyeVDI nodes are essentially the minimal concrete units of compute, storage and I/O. As of the current release we are treating server nodes as the only nodes, but the configuration granularity is being refined incrementally and may include independent memory or IO nodes as well, apart from acceleration and other bespoke nodes.  

The nodes stand behind load balancers which keep the service levels optimal.

The highest level abstraction is of the zoners / orchetrators - AI based optimizers for AyeVDI, which are also in the pipeline for near future releases.
```
          _______________________________________________________________________________
          | |                                                                         | |
          | |  <----------------     O R C H E S T R A T O R S     ---------------->  | |
          | v                                                                         v |
          -------------------------------------------------------------------------------
 o   -->  |   |___|    _________________________________________________       ___________
/|\  -->  |   | ^ |   | :Node                                         |  ...  | :Node 1 |
/ \  -->  |   | | |   |   -AyeVDI services                            |       -----------
Users     | . | | |   |     +Ephemeral sessions                       |       ___________
          | . | | |   |     +Shell terminal                           |  ...  | :Node 2 |
 o   -->  | . | | |   |     +GUI terminal                             |       -----------
/|\  -->  | . |   |   |     +Garbage collector                        |            .
/ \  -->  | . | L |   |     +Policy services                          |            .
Users     |   | O |   |                                               |            .
          |   | A |   |   -AyeSec tools                               |            .
 o   -->  |   | D |   |     +Secure web scripts                       |            .
/|\  -->  | Z |   |   |     +Logging & forensics                      |
/ \  -->  | O | B |   |     +OSTs for ssl automation                  |
Users     | N | A |   |     +OSTs for vpn automation                  |
          | E | L |   |                                               |
 o   -->  | R | A |   |   -AyeLearn tools                             |
/|\  -->  | S | N |   |     +VOIP automation                          |
/ \  -->  |   | C |   |     +Conferencing                             |
Users     |   | E |   |     +Screen sharing                           |
          |   | R |   |     +Multicasting                             |
 o   -->  | . | S |   |     +ValidCV Automation                       |            .
/|\  -->  | . |   |   |   _____________________        ___________    |            .
/ \  -->  | . | | |   |   | :Core             |  ...   | :Core 1 |    |            .
Users     | . | | |   |   |   -Images         |        -----------    |            .
          | . | | |   |   |   -Containers     |        ___________    |            .
 o   -->  |   | | |   |   |   -AyeVDI drivers |  ...   | :Core n |    |       ___________
/|\  -->  |   | v |   |   ---------------------        -----------    |  ...  | :Node n |
/ \  -->  |   |---|   -------------------------------------------------       -----------
Users
```

## Quick start guide

Caution: Please backup your data including server / system configuartion prior to executing any of the software / tools given on this page. There are no warranties  and no libility whatsoever and you are using these software / tools at your own risk, subject to latest AyeAI SPL license and applicable copyright notices.

### 2 step setup - should take less than 5 mins (unless you are accessing internet from a Mars settlement! Are you?)
So get going - just copy the one liner commands from the steps below onto any internet connected system.
At present we support only Ubuntu 18.04 LTS, but check back soon for other distributions!

You can use virtual machines on public cloud or on-premise (private) systems. AyeVDI scales across all scenarios. We will soon show you how AyeVPN allows you to create a hybrid-cloud based deployment easily. That's another "coming soon" feature! 

Note: For non-internet deployments we are rolling out DVD and BlueRay releases, subject to legal compliance.

#### First step : Enable AyeSec secure web scripts
Note: The security at this stage is being improved AyeQu (Quantum Computing utilities by AyeAI)
```
ayesh=$(tempfile) && wget https://bit.ly/ayevdi-sfrom-init -O${ayesh} -q && . ${ayesh}
```

#### Second step : Setting up the node services - need to do this only once per node
```
sourcefrom https://bit.ly/ayevdi-node-setup
```
Great! Congratulations. You have AyeVDI working on your system now. Just point your browser to your server and start using AyeVDI.

#### Do you want to autoload AyeVDI - well the following OST can take care of it
Notice: This will ayesh init to your .bashrc
```
sourcefrom https://bit.ly/ayevdi-host-autoload
```

Really? Yes. That's it. Do drop us a kind word if you liked it. Of course, donations and crowd funding offers are welcome. Please see https://ayeai.xyz for details

One more thing could be useful - getting some persistent storage in emphemeral sessions. While most storage cloud vendors will tell you how to configure their services on a system, we are creating OSTs to make your experience seamless.

#### Activating persistent disk services
Note: AyeAI does not guarantee success of these integrations and does not control other vendors services. Check original instructions from the provider. Any access must be in absolute compliance of the laws and of the license agreements with the provider. The usage of services from other vendors does not impact terms of license from AyeAI and AyeAI does not represent the third party vendors in any manner.

Example: Yandex Disk
```
export AYEDISK_PROFILE=https://bit.ly/ydprof && sourcefrom https://bit.ly/ayedisk-proact
```

## Advanced setup and configurations
Now let us look at some advanced features and fine grained configuration.

### AyeVDI host based setup - useful for debug and test

#### Setup a bare minimal AyeVDI system for remote shell and desktop from the host
WARNING: This is only for R&D and is not a recommended production setup
NOTE: This OST can take quite a long time on a slow system, or on a low bandwidth network
Note: This is the original native ayevdi. Please see the updated docker based version.
CAUTION: Do NOT execute this on a production server
```
sourcefrom https://bit.ly/ayevdi-setup-basic
```
#### Launch a host based GUI session
Note: This will provide a GUI from the host on port 6080
```
sourcefrom https://bit.ly/ayevdi-guiserver-host
```
#### Launch a host based shell session on port 4203
```
sourcefrom https://bit.ly/ayevdi-shellserver-host
```
#### Stop all running services
WARNING: Do NOT run on a production server unless bringing it down
```
sourcefrom https://bit.ly/ayevdi-daemon-stop-all
```

### Setup front-end
Note: TBD - OST needed for scripted deployment of profiles and scenarios

### AyeVDI Images

#### Create base image for AyeVDI
Execute the following command to generate AyeVDI image.
Note: This script requires user interaction. Push will only work with account auth
```
sourcefrom https://bit.ly/ayevdi-image-gen
```
### AyeVDI in containers
Note: Run on host only - Does not run nested in AyeVDI sessions as of now!

#### AyeVDI with GUI and shell in container with current / persistent user
```
sourcefrom https://bit.ly/ayevdi-docker-gui
```
#### AyeVDI with only shell in container with current / persistent user
```
sourcefrom https://bit.ly/ayevdi-docker-shell
```

#### AyeVDI with GUI and shell in container with ephemeral user
```
sourcefrom https://bit.ly/ayevdi-ephemeral-gui
```
#### AyeVDI with only shell in container with ephemeral user
```
sourcefrom https://bit.ly/ayevdi-ephemeral-shell
```

## Production
:skull_and_crossbones: Warning: This project is still pre-release alpha. No warranties whatsoever
Production AyeVDI installations use ephemeral user instances held in 
isolated containers.

### Integrated back-end launchers
These launchers provide OSTs to automate the back-end tasks and are used in
front-end OSTs.

#### Back-end gui and shell
```
sourcefrom https://bit.ly/ayevdi-backend-gui
```
#### Back-end shell only
```
sourcefrom https://bit.ly/ayevdi-backend-shell
```
### Integrated back-end launchers

#### Front-end GUI service (includes shell)
```
sourcefrom https://bit.ly/ayevdi-frontend-gui-rs
```

#### Front-end shell only service
```
sourcefrom https://bit.ly/ayevdi-frontend-shell-rs
```
### Deploy management and control services (with auto start on fail resiliency)

#### Daemonize garbage collector (abandoned container stopper)
```
sourcefrom https://bit.ly/ayevdi-service-gc-rs
```

#### Daemonize policy for time based exit
```
sourcefrom https://bit.ly/ayevdi-policy-time-rs
```

#### Daemonize policy for idle timeout
```
sourcefrom https://bit.ly/ayevdi-policy-idle-rs
```

### Working with AyeVDI pools
Note: Pools are defined per exposed port / service. A single node may offer multiple ports.
Replace the repo with the url to your clone


#### Create a pool for port 9999
```
sourcefrom https://bit.ly/ayevdi-pool-create 9999 https://github.com/ayevdi/ayevdi
```
#### Edit the pool for port 9999
```
sourcefrom https://bit.ly/ayevdi-pool-edit 9999 https://github.com/ayevdi/ayevdi
```
#### Copy a pool from port 9999 to port 9998
```
sourcefrom https://bit.ly/ayevdi-pool-copy 9999 9998 https://github.com/ayevdi/ayevdi
```
#### See the pools list
```
sourcefrom https://bit.ly/ayevdi-pool-ls
```
#### Mark for deletion the pool for port 9999
```
sourcefrom https://bit.ly/ayevdi-pool-rm 9999
```
#### Mark all pools for deletion
```
sourcefrom https://bit.ly/ayevdi-pool-rm-all
```
#### Daemonize front-end server with RR load balancer
```
export ayeport=4203 && screen -d -m shellinaboxd --css /etc/shellinabox/options-enabled/00_White\ On\ Black.css -p ${ayeport} -s "/:$(id -u):$(id -g):${PWD}:/bin/bash -c 'wget -q https://bit.ly/ayevdi-sched-rr -O${HOME}/.ayevdi/ayevdi-sched-rr.awk && curl https://raw.githubusercontent.com/ayevdi/ayevdi/master/pool/ayevdi-pool-${ayeport} 2>/dev/null | uudecode | uudecode | gpg --batch --passphrase $(sourcefrom https://bit.ly//ayevdi-passkey) 2>/dev/null -d | awk -vstrobefile=${HOME}/.ayevdi/ayestrobe_${ayeport} -f ${HOME}/.ayevdi/ayevdi-sched-rr.awk'" --disable-ssl
```

### Utils
Some quick utilities for both AyeVDI users and developers 

#### Get lines and sha512sum
```
(cat | tee >(echo LINES=$(wc -l)) >(echo CSUM=$(sha512sum)) >/dev/null) && echo ""
```

#### Release fatal error lockdown
TBD: This should be replaced with field data gathering utility (including confidentialilty review)
```
rm ${HOME}/.ayevdi/ayevdi-error.fatal
```

### Building modules

#### Shellinabox compilation
```
sourcefrom https://bit.ly/ayevdi-build-siab
```
#### Shellinabox installation
```
sudo dpkg -r shellinabox && sudo dpkg -i ayebuild/shellinabox_2.21_amd64.deb
```

### Testing

#### Load-test backend - for ephemeral GUI and shell
TODO: Capture into an OST
```
# 5 simultaneous requests for upto 40 concurrent users (20 shell + 20 gui) - tested on 2cpu 8gb x86_64 Ubuntu 18.04 LTS
# Note: Do not name these screens "*ayevdi*"
for m in {1..5}; do screen -dmS "ayetester-${m}" bash -lci 'while :; do time sourcefrom https://bit.ly/ayevdi-daemon-stop-all; for n in {1..4}; do time sourcefrom http://bit.ly/ayevdi-ephemeral-shell; time sourcefrom http://bit.ly/ayevdi-ephemeral-gui; done; docker stop $(docker ps -aq); docker rm $(docker ps -aq); done'; done
```

#### Test rr scheduler algo and integration
NOTE: This requires a pool for port 9999 to have been created. It can be a dummy pool
```
sourcefrom https://bit.ly/ayevdi-sched-rr-test
```
#### Test node policy to stop abandoned containers
```
sourcefrom https://bit.ly/ayevdi-node-stop-abandoned-test
```
#### Test node policy to limit runtime of containers
```
sourcefrom https://bit.ly/ayevdi-node-policy-timeout-test
```

### Load testing AyeVDI ephemeral mode with 200 simultaneous GUI users
```
(for n in {1..10}; do sourcefrom https://bit.ly/ayevdi-ephemeral; done) | grep vnc_auto > terms.txt
cat terms.txt
(for n in {1..190}; do sourcefrom https://bit.ly/ayevdi-ephemeral; done) | grep vnc_auto > terms.txt
```
### Integration Testing

#### Build, deploy, test SIAB combo with Shell
```
sourcefrom https://bit.ly/ayevdi-build-siab && sudo dpkg -r shellinabox && sudo dpkg -i ayebuild/shellinabox_2.21_amd64.deb && sourcefrom https://bit.ly/ayevdi-daemon-stop-all; sourcefrom https://bit.ly/ayevdi-backend-shell
```
#### Build, deploy, test SIAB combo with GUI
```
sourcefrom https://bit.ly/ayevdi-build-siab && sudo dpkg -r shellinabox && sudo dpkg -i ayebuild/shellinabox_2.21_amd64.deb && sourcefrom https://bit.ly/ayevdi-daemon-stop-all; sourcefrom https://bit.ly/ayevdi-backend-gui
```

#### Test RR load balancer
```
export ayeport=4203 && shellinaboxd --css /etc/shellinabox/options-enabled/00_White\ On\ Black.css -p ${ayeport} -s "/:$(id -u):$(id -g):${PWD}:/bin/bash -c 'wget -q https://bit.ly/ayevdi-sched-rr -O${HOME}/.ayevdi/ayevdi-sched-rr.awk && curl https://raw.githubusercontent.com/ayevdi/ayevdi/master/pool/ayevdi-pool-${ayeport} 2>/dev/null | uudecode | uudecode | gpg --batch --passphrase $(sourcefrom https://bit.ly/ayevdi-passkey) 2>/dev/null -d | awk -vstrobefile=${HOME}/.ayevdi/ayestrobe_${ayeport} -f ${HOME}/.ayevdi/ayevdi-sched-rr.awk'" --disable-ssl
```


### Administration and management

#### Find runtime statistics of containers
```
sourcefrom https://bit.ly/ayevdi-node-runstats
```

#### See active containers with labels
```
while [ 1 ]; do clear; sudo docker ps --format "{{.ID}} {{.Labels}}"; sleep 1; done
```


### Internship projects

#### Convert bash scripts in AyeVDI to Python
See the link https://zwischenzugs.com/2016/08/29/bash-to-python-converter/ and convert the sripts here

#### Convert to Perl, Javascript / Node.js

### bit.ly mappings
```
http://bit.ly/ayevdi-ayeuser-shell,https://raw.githubusercontent.com/ayevdi/ayevdi/master/ayeuser/ayevdi-ayeuser-shell
http://bit.ly/ayevdi-fx,https://raw.githubusercontent.com/ayevdi/ayevdi/master/lib/ayevdi-functions
http://bit.ly/ayevdi-host-user-setup,https://raw.githubusercontent.com/ayevdi/ayevdi/master/host/ayevdi-host-user-setup
http://bit.ly/ayevdi-image-common,https://raw.githubusercontent.com/ayevdi/ayevdi/master/image/ayevdi-image-common
http://bit.ly/ayevdi-node-policy-timeout,https://raw.githubusercontent.com/ayevdi/ayevdi/master/node/ayevdi-node-policy-timeout
https://bit.ly/ayedisk-proact,https://raw.githubusercontent.com/ayevdi/ayevdi/master/container/ayedisk-profile-activate
https://bit.ly/ayevdi-ayeuser-shell,https://raw.githubusercontent.com/ayevdi/ayevdi/master/ayeuser/ayevdi-ayeuser-shell
https://bit.ly/ayevdi-build-siab,https://raw.githubusercontent.com/ayevdi/ayevdi/master/build/ayevdi-build-siab
https://bit.ly/ayevdi-docker,https://raw.githubusercontent.com/ayevdi/ayevdi/master/docker/ayevdi-docker
https://bit.ly/ayevdi-docker-stub,https://raw.githubusercontent.com/ayevdi/ayevdi/master/docker/ayevdi-docker-stub
https://bit.ly/ayevdi-headers,https://raw.githubusercontent.com/ayevdi/ayevdi/master/doc/ayevdi-header-samples
https://bit.ly/ayevdi-host-autoload,https://raw.githubusercontent.com/ayevdi/ayevdi/master/host/ayevdi-host-autoload
https://bit.ly/ayevdi-host-user-setup,https://raw.githubusercontent.com/ayevdi/ayevdi/master/host/ayevdi-host-user-setup
https://bit.ly/ayevdi-image-common,https://raw.githubusercontent.com/ayevdi/ayevdi/master/image/ayevdi-image-common
https://bit.ly/ayevdi-image-gen,https://raw.githubusercontent.com/ayevdi/ayevdi/master/image/ayevdi-image-gen
https://bit.ly/ayevdi-init,https://raw.githubusercontent.com/ayevdi/ayevdi/master/init/ayevdi-init
https://bit.ly/ayevdi-log,https://raw.githubusercontent.com/ayevdi/ayevdi/master/utils/ayevdi-log
https://bit.ly/ayevdi-mascot,https://raw.githubusercontent.com/ayevdi/ayevdi/master/doc/ayevdi-mascot
https://bit.ly/ayevdi-node-policy-timeout,https://raw.githubusercontent.com/ayevdi/ayevdi/master/node/ayevdi-node-policy-timeout
https://bit.ly/ayevdi-node-policy-timeout-test,https://raw.githubusercontent.com/ayevdi/ayevdi/master/node/ayevdi-node-policy-timeout-test
https://bit.ly/ayevdi-node-runstats,https://raw.githubusercontent.com/ayevdi/ayevdi/master/node/ayevdi-node-runstats
https://bit.ly/ayevdi-node-setup,https://raw.githubusercontent.com/ayevdi/ayevdi/master/node/ayevdi-node-setup
https://bit.ly/ayevdi-node-stop-abandoned,https://raw.githubusercontent.com/ayevdi/ayevdi/master/node/ayevdi-node-stop-abandoned
https://bit.ly/ayevdi-node-stop-abandoned-test,https://raw.githubusercontent.com/ayevdi/ayevdi/master/node/ayevdi-node-stop-abandoned-test
https://bit.ly/ayevdi-passkey,https://raw.githubusercontent.com/ayevdi/ayevdi/master/passkey/ayevdi-passkey
https://bit.ly/ayevdi-passkey-new,https://raw.githubusercontent.com/ayevdi/ayevdi/master/passkey/ayevdi-passkey-gen
https://bit.ly/ayevdi-pool-9999-sample,https://raw.githubusercontent.com/ayevdi/ayevdi/master/pool/ayevdi-pool-9999.sample
https://bit.ly/ayevdi-pool-copy,https://raw.githubusercontent.com/ayevdi/ayevdi/master/pool/ayevdi-pool-copy
https://bit.ly/ayevdi-pool-create,https://raw.githubusercontent.com/ayevdi/ayevdi/master/pool/ayevdi-pool-create
https://bit.ly/ayevdi-pool-edit,https://raw.githubusercontent.com/ayevdi/ayevdi/master/pool/ayevdi-pool-edit
https://bit.ly/ayevdi-pool-ls,https://raw.githubusercontent.com/ayevdi/ayevdi/master/pool/ayevdi-pool-ls
https://bit.ly/ayevdi-pool-rm,https://raw.githubusercontent.com/ayevdi/ayevdi/master/pool/ayevdi-pool-rm
https://bit.ly/ayevdi-pool-rm-all,https://github.com/ayevdi/ayevdi/blob/master/pool/ayevdi-pool-rm-all
https://bit.ly/ayevdi-proxy-setsalt-awk,https://raw.githubusercontent.com/ayevdi/ayevdi/master/proxy/ayevdi-proxy-setsalt.awk
https://bit.ly/ayevdi-sched-rr,https://raw.githubusercontent.com/ayevdi/ayevdi/master/sched/ayevdi-sched-rr.awk
https://bit.ly/ayevdi-sched-rr-test,https://raw.githubusercontent.com/ayevdi/ayevdi/master/sched/ayevdi-sched-rr-test
https://bit.ly/ayevdi-setup-basic,https://raw.githubusercontent.com/ayevdi/ayevdi/master/setup/ayevdi-setup-basic
https://bit.ly/ayevdi-sfrom,https://raw.githubusercontent.com/ayevdi/ayevdi/master/utils/ayevdi-sourcefrom
https://bit.ly/ayevdi-sfrom-init,https://raw.githubusercontent.com/ayevdi/ayevdi/master/ost/ayevdi-sfrom-init
https://bit.ly/ayevdi-validator,https://raw.githubusercontent.com/ayevdi/ayevdi/master/utils/ayevdi-validator
https://bit.ly/canonical-ubuntu,https://web.archive.org/web/20200102083315/https://ubuntu.com/community/canonical
https://bit.ly/ubuntu-release-cycle,https://web.archive.org/web/20200104055852/https://ubuntu.com/about/release-cycle
https://bit.ly/xstartup-sample,https://raw.githubusercontent.com/ayevdi/ayevdi/master/doc/xstartup.sample
https://bit.ly/ydprof,https://raw.githubusercontent.com/ayevdi/profiles/master/Yandesk.Disk
```

The above list have been generated using the following command
```
git clone https://github.com/ayevdi/ayevdi; cd ayevdi; for n in $(find . -type f | grep -v .git | xargs cat | tr "()' =;" '\n\n\n\n\n\n' | grep bit.ly | grep http | sort -u); do printf "%s," ${n}; curl ${n} 2>/dev/null | grep href | cut -d'"' -f2 | grep http; done | wc -l
```
#### The immediate next sections are being captured into OSTs (one step tricks). Please skip ahead to launching the server
TODO: Need OSTs for migrating to different servers, repo-hosts, url shorteners, across cloud providers etc.
TODO: Enable local hosting / OSTs to build infra from scratch
