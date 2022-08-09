terraform {
  cloud {
    organization = "David-DevOps-learning-path"

    workspaces {
      name = "provisioners"
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

resource "aws_budgets_budget" "monthly_cost_budget" {
  name = "monthly-budget"
  budget_type = "COST"
  limit_amount = "100"
  limit_unit = "USD"
  time_unit = "MONTHLY"
  time_period_start = "2022-06-23_00:00"
}
