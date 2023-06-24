module "alejandro_adroher" {
  source  = "./modules/user"
  name    = "alejandro.adroher"
  pgp_key = "mI0EYddPXgEEAKPOc3+aycVcpt+KwOvvVTyAaPy3y/+iZJQxqp6pGst2A6xcy31FE7MUYra/nAaoISH70Wk426fJMNSYWCoIunFJ5c9wl/7AUCrVc6Zz5tttkKHFjKLZSolE69Ymdm7qqXdfPoO/Yxi3plV8JPl3tXBLKrnd3i5gJ8BD9MydelbFABEBAAG0Lkpvc2UgTGFyZWRvIFNXRlMgKGNvbW1lbnQpIDxwcnVlYmFAcHJ1ZWJhLmNvbT6I0gQTAQgAPBYhBDrzMyiuNSoAkXOk5rzG52acHJICBQJh109eAhsDBQsJCAcCAyICAQYVCgkICwIEFgIDAQIeBwIXgAAKCRC8xudmnBySAkG/A/99w0Xaj2L7bgVh4F1WiE/uNF5vWs48An/QQJkv+hYvM/6d/QzCzT/rkN/2gxpu5+cB1np+5x/MCgMQmR8ajWDzx1Jt/yoilmZzsBQQ+tZyhIrZmYkbbX3obNox7kdFgdeOZLu7/1VXk8N0M2xYYQh1IHghWGUWWwbO5BZFIbtlQLiNBGHXT14BBADG7lHp389jTi61ZDbbd7wDP1ksH0tCkANs9rLhko+cb5Nk3l3iYoVDQ7EkBbJFDbX1JYt3YMH2OHriz21g0XvPOulRNbUqH74QKG1XTa63Mj9T4+FmAiFFcXgypV92PjdwLMmqY2SCAKTmvLB9mb18NBnowdKvGO1es8qsDj7fDQARAQABiLYEGAEIACAWIQQ68zMorjUqAJFzpOa8xudmnBySAgUCYddPXgIbDAAKCRC8xudmnBySAi+iA/4ssZoiPJHPhCz8h7FNnjMUZtJQzS2fDg4JZ4M9Gur3QA9ojtNdBPWwpveGTJU7wHsBPxnEhcebiigG+GPWfD7IhiH/QsqvrRoFWY3n60JHFa9V0KbY6t/lNIIi2uGJHaQuM9deq+5AvxXWGonSBIREnkxZPFCcR4J1S9+letSATQ=="

  groups = [
    aws_iam_group.self_managing.name,
    module.administrators_global_security_group.group_name,
    module.administrators_global_environments_group.group_name,
    module.administrators_global_data_group.group_name,
    module.administrators_global_lab_group.group_name
  ]

  providers = {
    aws = aws.security
  }
}

module "jose_bustos" {
  source  = "./modules/user"
  name    = "jose.bustos"
  pgp_key = "mI0EYddPXgEEAKPOc3+aycVcpt+KwOvvVTyAaPy3y/+iZJQxqp6pGst2A6xcy31FE7MUYra/nAaoISH70Wk426fJMNSYWCoIunFJ5c9wl/7AUCrVc6Zz5tttkKHFjKLZSolE69Ymdm7qqXdfPoO/Yxi3plV8JPl3tXBLKrnd3i5gJ8BD9MydelbFABEBAAG0Lkpvc2UgTGFyZWRvIFNXRlMgKGNvbW1lbnQpIDxwcnVlYmFAcHJ1ZWJhLmNvbT6I0gQTAQgAPBYhBDrzMyiuNSoAkXOk5rzG52acHJICBQJh109eAhsDBQsJCAcCAyICAQYVCgkICwIEFgIDAQIeBwIXgAAKCRC8xudmnBySAkG/A/99w0Xaj2L7bgVh4F1WiE/uNF5vWs48An/QQJkv+hYvM/6d/QzCzT/rkN/2gxpu5+cB1np+5x/MCgMQmR8ajWDzx1Jt/yoilmZzsBQQ+tZyhIrZmYkbbX3obNox7kdFgdeOZLu7/1VXk8N0M2xYYQh1IHghWGUWWwbO5BZFIbtlQLiNBGHXT14BBADG7lHp389jTi61ZDbbd7wDP1ksH0tCkANs9rLhko+cb5Nk3l3iYoVDQ7EkBbJFDbX1JYt3YMH2OHriz21g0XvPOulRNbUqH74QKG1XTa63Mj9T4+FmAiFFcXgypV92PjdwLMmqY2SCAKTmvLB9mb18NBnowdKvGO1es8qsDj7fDQARAQABiLYEGAEIACAWIQQ68zMorjUqAJFzpOa8xudmnBySAgUCYddPXgIbDAAKCRC8xudmnBySAi+iA/4ssZoiPJHPhCz8h7FNnjMUZtJQzS2fDg4JZ4M9Gur3QA9ojtNdBPWwpveGTJU7wHsBPxnEhcebiigG+GPWfD7IhiH/QsqvrRoFWY3n60JHFa9V0KbY6t/lNIIi2uGJHaQuM9deq+5AvxXWGonSBIREnkxZPFCcR4J1S9+letSATQ=="

  groups = [
    aws_iam_group.self_managing.name,
    module.administrators_global_security_group.group_name,
    module.administrators_global_environments_group.group_name,
    module.administrators_global_data_group.group_name,
    module.administrators_global_lab_group.group_name
  ]

  providers = {
    aws = aws.security
  }
}
module "faisal_ghufran" {
  source  = "./modules/user"
  name    = "faisal.ghufran"
  pgp_key = "mI0EYddPXgEEAKPOc3+aycVcpt+KwOvvVTyAaPy3y/+iZJQxqp6pGst2A6xcy31FE7MUYra/nAaoISH70Wk426fJMNSYWCoIunFJ5c9wl/7AUCrVc6Zz5tttkKHFjKLZSolE69Ymdm7qqXdfPoO/Yxi3plV8JPl3tXBLKrnd3i5gJ8BD9MydelbFABEBAAG0Lkpvc2UgTGFyZWRvIFNXRlMgKGNvbW1lbnQpIDxwcnVlYmFAcHJ1ZWJhLmNvbT6I0gQTAQgAPBYhBDrzMyiuNSoAkXOk5rzG52acHJICBQJh109eAhsDBQsJCAcCAyICAQYVCgkICwIEFgIDAQIeBwIXgAAKCRC8xudmnBySAkG/A/99w0Xaj2L7bgVh4F1WiE/uNF5vWs48An/QQJkv+hYvM/6d/QzCzT/rkN/2gxpu5+cB1np+5x/MCgMQmR8ajWDzx1Jt/yoilmZzsBQQ+tZyhIrZmYkbbX3obNox7kdFgdeOZLu7/1VXk8N0M2xYYQh1IHghWGUWWwbO5BZFIbtlQLiNBGHXT14BBADG7lHp389jTi61ZDbbd7wDP1ksH0tCkANs9rLhko+cb5Nk3l3iYoVDQ7EkBbJFDbX1JYt3YMH2OHriz21g0XvPOulRNbUqH74QKG1XTa63Mj9T4+FmAiFFcXgypV92PjdwLMmqY2SCAKTmvLB9mb18NBnowdKvGO1es8qsDj7fDQARAQABiLYEGAEIACAWIQQ68zMorjUqAJFzpOa8xudmnBySAgUCYddPXgIbDAAKCRC8xudmnBySAi+iA/4ssZoiPJHPhCz8h7FNnjMUZtJQzS2fDg4JZ4M9Gur3QA9ojtNdBPWwpveGTJU7wHsBPxnEhcebiigG+GPWfD7IhiH/QsqvrRoFWY3n60JHFa9V0KbY6t/lNIIi2uGJHaQuM9deq+5AvxXWGonSBIREnkxZPFCcR4J1S9+letSATQ=="

  groups = [
    aws_iam_group.self_managing.name,
    module.administrators_global_security_group.group_name,
    module.administrators_global_environments_group.group_name,
    module.administrators_global_data_group.group_name,
    module.administrators_global_lab_group.group_name
  ]

  providers = {
    aws = aws.security
  }
}


# output "users_summary" {
#   value = [
#     module.jose_laredo.summary,
#   ]
# }
