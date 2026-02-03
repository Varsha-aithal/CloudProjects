# Serverless Web Application on AWS

This project demonstrates a basic serverless web application on AWS using static hosting and backend data processing with AWS-managed services. The project focuses on learning how AWS services integrate in a serverless setup.

# Architecture Overview
![Serverless Web Application Architecture](Serverless-Web-Application-On-AWS/Architecture_Overview.png)

# AWS Services Used
1. Amazon S3 - Hosts static website files (HTML, CSS, JavaScript)
2. Amazon CloudFront - Distributes the website globally with caching and HTTPS support
3. AWS Lambda - Contains backend logic to update and retrieve a view counter
4. Amazon DynamoDB - Stores the page view count
5. AWS IAM - Provides permissions for Lambda to access DynamoDB

# How It Works
1. Static website files are uploaded to an S3 bucket
2. CloudFront serves the content globally using a distribution URL
3. A Lambda function updates a counter stored in DynamoDB
4. DynamoDB stores and persists the view count data



