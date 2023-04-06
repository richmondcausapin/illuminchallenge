# README


The powershell script 'Create_OktaUser.ps1' will allow creation of a user within Otka.
It will ask you to enter the OKTA API endpoint and your Okta API key in order to complete the request.
(e.g for the Okta API endpoint - https://domain.okta.com/api/v1/users)

It will prompt the user to enter the following information:
First Name,
Last Name,
Email
Username will be the same as the email

Once completed, it will create the user and you will be able to see that user within the Otka admin panel.

The powershell script 'Deactivate-OktaUser.ps1' will deactivate a user within Otka.
It will ask you to enter the Okta API endpoint and the Okta API key in order to the complete the request.
(e.g. for this Okta API endpoint - https://domain.okta.com/api/v1)

It will prompt the user to enter the email in which you would like to deactivate.
Once completed, it will deactivate the user and a brief message will appear to confirm that the email and user was succesfully deactivated.

All code was created in Visual Studio Code.
