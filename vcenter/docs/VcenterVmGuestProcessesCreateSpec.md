# VSphereAutomation::VCenter::VcenterVmGuestProcessesCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**arguments** | **String** | The arguments to the program.   Characters which must be escaped to the shell should also be escaped in Processes.CreateSpec.arguments.    In Linux and Solaris guest operating systems, stdio redirection arguments may be used.    For Windows, stdio redirection can be added to the argments if Processes.CreateSpec.path is prefixed with c:\\windows\\system32\\cmd.exe /c. . Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If this value is unset no arguments are passed to the program. | [optional] 
**environment_variables** | [**Array&lt;VcenterLcmDestinationApplianceOvftoolArguments&gt;**](VcenterLcmDestinationApplianceOvftoolArguments.md) | A map of environment variables, specified using the guest OS rules (for example PATH, c:\\bin;c:\\windows\\system32 or LD_LIBRARY_PATH,/usr/lib:/lib), to be set for the program being run. Note that these are not additions to the default environment variables; they define the complete set available to the program. If this value is empty, then the environment variables used are guest dependent defaults. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**path** | **String** | The absolute path to the program to start.   For Linux guest operating systems, /bin/bash is used to start the program.    For Solaris guest operating systems, if /bin/bash exists, its used to start the program, otherwise /bin/sh is used. If /bin/sh is used, then the process ID returned by Processes.create will be that of the shell used to start the program, rather than the program itself, due to the differences in how /bin/sh and /bin/bash work. This PID will still be usable for watching the process with Processes.list to find its exit code and elapsed time.    For Windows, no shell is used. Using a simple batch file instead by prepending c:\\windows\\system32\\cmd.exe /c will allow stdio redirection to work if passed in the Processes.CreateSpec.arguments parameter. . Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**start_minimized** | **Boolean** | Makes any program window start minimized in Windows operating systems. Returns an error if set for non-Windows guests. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Defaults to false. | [optional] 
**working_directory** | **String** | The absolute path of the working directory for the program to be run. VMware recommends explicitly setting the working directory for the program to be run. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.  If this value is unset or is an empty string, the behavior depends on the guest operating system. For Linux guest operating systems, if this value is unset or is an empty string, the working directory will be the home directory of the user associated with the guest authentication. For other guest operating systems, if this value is unset, the behavior is unspecified. | [optional] 

