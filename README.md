# Terraform 3-Tier Architecture 

## Overview
This repository contains Terraform code to deploy a 3-tier architecture on AWS, designed as a practice project to demonstrate infrastructure-as-code principles. The architecture consists of a presentation tier (Application Load Balancer), an application tier (EC2 instances managed by an Auto Scaling Group), and a data tier (RDS database). Supporting infrastructure includes a VPC, Route 53 for DNS, and associated networking components. The project is progressively developed, with periodic updates pushed to this repository as improvements are made. The architecture follows best practices for security, scalability, and fault tolerance.

## Purpose
The objective of this project is to:
- Practice Terraform module development and composition.
- Simulate a production-like 3-tier web application infrastructure.
- Document progress and refinements via GitHub.

## Architecture Components
- VPC: Custom Virtual Private Cloud with public and private subnets.
- EC2: Instances deployed in the application tier.
- ALB: Application Load Balancer for distributing traffic.
- Route-53: DNS management for the application.
- ASG: Auto Scaling Group to manage EC2 instance scaling.
- RDS: Relational Database Service for the data tier.

## Prerequisites
To use this code, ensure you have the following:
- Terraform installed.
- AWS CLI configured with appropriate credentials.
- An AWS account with sufficient permissions to create the listed resources.
- Git (for version control and pushing to GitHub)

## Progress and Updates
This project is a work in progress. Updates will be committed periodically as the architecture evolves. Key milestones include:
- Initial setup of VPC module
- Integration of ALB and ASG for scalability
- EC2 module for instances
- Addition of RDS and Route 53 for a complete 3-tier setup
- Optimization and security enhancements

## Customize Variables:
Some values, such as AWS region, instance types, and resource configurations, are referenced as variables. Update the variables.tf file or create a terraform.tfvars file to specify these values according to your requirements.

## Contribution
This is a personal practice project. Suggestions or feedback are welcome via GitHub issues.
