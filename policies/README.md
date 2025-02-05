# Testing Pre-written Sentinel Policies for AWS Foundations Benchmark

These pre-written policies help organizations maintain compliance by validating configurations against industry standards. By running these tests, users can ensure that their pre-written policies are tested for different scenarios. This README also provides details of the folder structure for organizing policies and tests.

## Folder Structure

The folder structure that is followed for Pre-written Sentinel Policies and their tests is as follows:

```
/policies/AWS-Resource/
│── test/
│   │── example-policy/
│       │── example-test-1.hcl
|       |── example-test-2.hcl
|       |── mocks/
|           |── example-test-1/
|               |── mock-tfconfig-v2.sentinel
|               |── mock-tfplan-v2.sentinel
|               |── mock-tfstate-v2.sentinel
|           |── example-test-2/
|               |── mock-tfconfig-v2.sentinel
|               |── mock-tfplan-v2.sentinel
|               |── mock-tfstate-v2.sentinel
│── example-policy.sentinel
```

- `policies/` - This directory contains different folders, each folder contains policies for specific AWS Resource.
- `policies/AWS-Resource/` - This directory contains Sentinel policy files for AWS Complaince Standards.
- `test/` - This directory contains test case folder for each policy and the name of the test case folder is same as the policy name. and each test case will be associated with the `.hcl` file and mock files.
- `mocks/` - The mocks folder contains the terraform configuration mocks for the perticular test case scenario, the sentinel policy will be tested out on these mocks.

## Running the Tests

To run Sentinel policy tests, follow these steps:

1. **Ensure Sentinel is Installed**
   
   Make sure that you have HashiCorp Sentinel installed. You can download it from the official [HashiCorp website](https://developer.hashicorp.com/sentinel/install).

2. **Navigate to the Policies Directory**
   
   ```sh
   cd policies/AWS-Resource
   ```

3. **Run Tests Using Sentinel CLI**
   
   Execute the following command to run all tests:
   
   ```sh
   sentinel test
   ```

   To run tests for a specific policy, specify the policy file:
   
   ```sh
   sentinel test example-policy.sentinel
   ```

4. **Review the Test Output**
   
   The command output will indicate whether the tests passed or failed, providing details for debugging.

## Writing Tests

Test cases for policies are defined in HCL format within the `test/name-of-the-policy` directory. Each test case includes mock data, and expected outcomes.

To know more about the policy testing and structuring test cases, Refer to HashiCorp's [Sentinel Testing Guide](https://developer.hashicorp.com/sentinel/docs/writing/testing).

---
