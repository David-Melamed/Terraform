terraform {
  cloud {
    organization = "David-DevOps-learning-path"

    workspaces {
      name = "aws-daily-budget"
    }
  }

    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "4.19.0"
      }
    }
}


provider "aws" {
  region = "us-east-1"
  }

resource "aws_budgets_budget" "cost_budget" {
  name = "daily-budget"
  budget_type = "COST"
  limit_amount = "5"
  limit_unit = "USD"
  time_unit = "DAILY"
  time_period_start = "2022-07-03_00:00"
}

