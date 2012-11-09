apache-maven
============


Rerun module to manage the apache-maven distribution

Usage:
<pre>
[chuck@mvn-sdp-0 apache-maven]$ rerun apache-maven:
Available commands in module, "/home/chuck/workspace/rerun-modules/apache-maven":
build: "build and package the apache-maven distribution"
    --url|-u <http://apache.mirrors.lucidnetworks.net/maven/maven-3>: "url to the apache-maven downloads"
    --format|-f <rpm>: "package format "
    --release|-r <1>: "package release"
    --version|-v <>: "package version"
    --directory|-d <>: "reference installation directory to package"
</pre>

Example Build:
<pre>
[chuck@mvn-sdp-0 apache-maven]$ cp -r examples/build/maven /tmp
[chuck@mvn-sdp-0 apache-maven]$ rerun apache-maven: build --directory /tmp/maven --version 3.0.4
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 4775k  100 4775k    0     0  1025k      0  0:00:04  0:00:04 --:--:-- 1144k
Building target platforms: noarch
Building for target noarch
Executing(%prep): /bin/sh -e /var/tmp/rpm-tmp.ONcB3a
+ umask 022
+ cd /tmp/maven/BUILD
+ cd /tmp/maven/BUILD
+ rm -rf apache-maven-3.0.4
+ /usr/bin/unzip /tmp/maven/SOURCES/apache-maven-3.0.4.zip
Archive:  /tmp/maven/SOURCES/apache-maven-3.0.4.zip
   creating: apache-maven-3.0.4/
   creating: apache-maven-3.0.4/boot/
  inflating: apache-maven-3.0.4/boot/plexus-classworlds-2.4.jar  
   creating: apache-maven-3.0.4/lib/
  inflating: apache-maven-3.0.4/lib/maven-embedder-3.0.4.jar  
  inflating: apache-maven-3.0.4/lib/maven-settings-3.0.4.jar  
  inflating: apache-maven-3.0.4/lib/plexus-utils-2.0.6.jar  
  inflating: apache-maven-3.0.4/lib/maven-core-3.0.4.jar  
  inflating: apache-maven-3.0.4/lib/maven-model-3.0.4.jar  
  inflating: apache-maven-3.0.4/lib/aether-spi-1.13.1.jar  
  inflating: apache-maven-3.0.4/lib/aether-util-1.13.1.jar  
  inflating: apache-maven-3.0.4/lib/aether-impl-1.13.1.jar  
  inflating: apache-maven-3.0.4/lib/maven-compat-3.0.4.jar  
  inflating: apache-maven-3.0.4/lib/wagon-provider-api-2.2.jar  
  inflating: apache-maven-3.0.4/lib/commons-cli-1.2.jar  
  inflating: apache-maven-3.0.4/lib/wagon-http-2.2-shaded.jar  
  inflating: apache-maven-3.0.4/lib/wagon-file-2.2.jar  
  inflating: apache-maven-3.0.4/lib/aether-connector-wagon-1.13.1.jar  
...
...
...
+ mkdir -p /tmp/maven/BUILDROOT/apache-maven-3.0.4-1.noarch/usr/bin
+ cat
Processing files: apache-maven-3.0.4-1.noarch
Requires(interp): /bin/sh /bin/sh /bin/sh
Requires(rpmlib): rpmlib(CompressedFileNames) <= 3.0.4-1 rpmlib(PayloadFilesHavePrefix) <= 4.0-1
Requires(pre): /bin/sh
Requires(post): /bin/sh
Requires(preun): /bin/sh
Requires: /bin/sh
Checking for unpackaged file(s): /usr/lib/rpm/check-files /tmp/maven/BUILDROOT/apache-maven-3.0.4-1.noarch
Wrote: /tmp/maven/RPMS/noarch/apache-maven-3.0.4-1.noarch.rpm
Executing(%clean): /bin/sh -e /var/tmp/rpm-tmp.EaLWv1
+ umask 022
+ cd /tmp/maven/BUILD
+ cd apache-maven-3.0.4
+ exit 0
</pre>

Querying and Installing the Package:
<pre>
[chuck@mvn-sdp-0 apache-maven]$ rpm -qip /tmp/maven/RPMS/noarch/apache-maven-3.0.4-1.noarch.rpm 
Name        : apache-maven                 Relocations: (not relocatable)
Version     : 3.0.4                             Vendor: (none)
Release     : 1                             Build Date: Fri 09 Nov 2012 08:33:39 AM PST
Install Date: (not installed)               Build Host: mvn-sdp-0.local
Group       : Applications/System           Source RPM: apache-maven-3.0.4-1.src.rpm
Size        : 5555483                          License: LGPL
Signature   : (none)
Summary     : Apache/Maven Build and Comprehension Tool
Description :
Apache/Maven Build and Comprehension Tool
[chuck@mvn-sdp-0 apache-maven]$ sudo rpm -i /tmp/maven/RPMS/noarch/apache-maven-3.0.4-1.noarch.rpm 
[chuck@mvn-sdp-0 apache-maven]$ which mvn
/usr/bin/mvn
</pre>
