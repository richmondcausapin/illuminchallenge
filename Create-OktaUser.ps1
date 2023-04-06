# Prompt the user to enter their Okta API endpoint and credentials
$oktaUrl = Read-Host "Enter your Okta API endpoint"
$apiKey = Read-Host "Enter your Okta API key"

# Prompt the user to enter their information
$firstName = Read-Host "Enter your first name"
$lastName = Read-Host "Enter your last name"
$email = Read-Host "Enter your email address"
$login = $email  # Use email as the login

# Set the user data
$userData = @{
    "profile" = @{
        "firstName" = $firstName
        "lastName" = $lastName
        "email" = $email
        "login" = $login
    }
}

# Convert the user data to JSON
$jsonUserData = $userData | ConvertTo-Json

# Set the headers for the API request
$headers = @{
    "Content-Type" = "application/json"
    "Authorization" = "SSWS $apiKey"
}

# Make the API request to create the user
$response = Invoke-RestMethod -Method Post -Uri $oktaUrl -Headers $headers -Body $jsonUserData

# Check the response for success
if ($response.status -eq "PROVISIONED") {
    Write-Host "User created successfully!"
} else {
    Write-Host "Failed to create user. Response: $($response | ConvertTo-Json)"
}
