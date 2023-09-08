# Generate Resource group name

This example demonstrates how to generate a single name using the module.

Please __NOTE__ you'll need to ensure the values being passed to the API are expected...in my example I had to created two custom components:

- project
- uniqueness

```shell
# Simply run 

terraform init

terraform apply -var="ant_api_endpoint=url" -var="ant_api_key=blahblahblah" --auto-approve
```