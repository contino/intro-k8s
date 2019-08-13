+++
title = "Requirements GCP"
date = 2018-12-09T16:52:57-05:00
weight = 50
draft = true
+++

**To complete this workshop you will need the following installed** 

**Required**: Docker, git, gcloud, kubectl, gmail account, github account

Optional: devops debate slack account

## GCloud console (recommended)

Log into https://console.cloud.google.com

Navigate to https://console.cloud.google.com/compute/instances?project=us-k8s-workshop

Find your instance with your name on it

under connect click Dropped down and select Open in browser Window

![](/intro-k8/images/connect.png)

A New browser window should pop and give your a terminal prompt 

![](/intro-k8/images/shell.png)


## Local install 

### [Docker](https://docker.io)

#### Windows 

   * [Directions](https://docs.docker.com/docker-for-windows/install/)
    
   * [Installer](https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe)

#### Mac
 
   * [Directions](https://docs.docker.com/v17.12/docker-for-mac/install/)
   * [Installer](https://download.docker.com/mac/stable/Docker.dmg)
   
___

## [gcloud](https://cloud.google.com/sdk/docs/#install_the_latest_cloud_tools_version_cloudsdk_current_version)

 Cloud SDK requires Python 2 with a release version of Python 2.7.9 or later. The installer will install all necessary dependencies, including the needed Python version, by default. If you already have Python 2.x.y installed and want to use the existing installation, you can uncheck the option to install Bundled Python.
    Note: As of Cloud SDK version 206.0.0, the gcloud CLI has experimental support for running using a Python 3.4+ interpreter (run gcloud topic startup for exclusions and more information on configuring your Python interpreter). All other Cloud SDK tools still require a Python 2.7 interpreter.
    After installation has completed, accept the following options:

#### Windows

1. Download the Cloud SDK installer. The installer is signed by Google Inc.

2. Launch the installer and follow the prompts.
        
3. After installation has completed, accept the following options:
   
       Start Cloud SDK Shell
       Run gcloud init


#### Mac

1. Double Check Python 2 is installed.

```
python -V
```

2. Download one of the following:

    [macOS 64-bit](https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-228.0.0-darwin-x86_64.tar.gz)

    [macOS 32-bit](https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-228.0.0-darwin-x86.tar.gz)

    Extract the contents of the file to any location on your file system.

3. Install with this script

```
./google-cloud-sdk/install.sh
```

4. Initialize the install. Open a new terminal so that the changes take effect. Run gcloud init to initialize the SDK:

```
./google-cloud-sdk/bin/gcloud init
```
    
___


## [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)


You can install kubectl as part of the Google Cloud SDK.

    
Run the kubectl installation command:
```
gcloud components install kubectl
```

Test to ensure the version you installed is sufficiently up-to-date:

```
kubectl version
```

## [Git](git-scm.com)

Download git client from [Git Scm](git-scm.com)

## [Slack](https://devopsdebate.slack.com)

We will be using to ask/answer questions during and after the workshop. 
Other DevOps engineers are members of this slack community as well

[Devops Debate account](https://devopsdebate.slack.com)

