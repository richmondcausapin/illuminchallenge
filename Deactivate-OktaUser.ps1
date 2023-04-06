# Prompt the user to enter their Okta API endpoint and API key
$oktaUrl = Read-Host "Enter your Okta API endpoint"
$apiKey = Read-Host "Enter your Okta API key"

# Prompt the user to enter the email address of the user to be deactivated
$email = Read-Host "Enter the email address of the user to be deactivated"

# Construct the API endpoint URL for the user to be deactivated
$url = "$oktaUrl/users/$email/lifecycle/deactivate"

# Set up the headers for the API request
$headers = @{ 
    'Authorization' = "SSWS $apiKey"
    'Content-Type' = 'application/json'
}

# Send a POST request to the Okta API to deactivate the user
try {
    Invoke-RestMethod -Uri $url -Method Post -Headers $headers -ErrorAction Stop
    Write-Host "User $email has been successfully deactivated in Okta."
}
catch {
    Write-Host "Failed to deactivate user $email in Okta. Error message: $($_.Exception.Message)"
}
