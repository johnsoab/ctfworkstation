# ctfworkstation


## Basic Instructions

1. Fetch ctfworkstation from https://github.com/johnsoab/ctfworkstation
1. Update hosts (which likely says ctfwrk??.. replace with each host you provisioned ctfwrk1, 2, 3, etc. and your password) 
1. Apply ctf-workstation roles to your hosts: ansible-playbook --forks 25 ./workstation.yml
   1. Set # of forks to number of hosts you provisioned.. so they can fire in parallel
1. Some manual steps to add BurpCA.. 
   1. RDP into newly provisioned host. 
   1. Start Burp, Click thru new project dialog. Disable Interception.
   1. Open Firefox
   1. Navigate to http://burp/cert and download cacert.pem
   1. Go to Tools->Options->Security->View Certificates. Import CA from Downloads, allow it to identify websites.
   1. Set default homepage to https://10.0.0.4 (or whatever ctfserver is).
   1. Verify all is working.
		
	
	
## Known issues:
- Lacks an automated task to add burp CA into firefox certstore (I believe is possible, just need time)
- Need to setup dynamic inventory so we can just specify type:workstation tag
- Maybe create a simple stop/start playbook for ease of shutting down environment (easier with dynamic inventory)
