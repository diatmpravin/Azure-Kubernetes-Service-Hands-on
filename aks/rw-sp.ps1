$subscription = "xxxxxxxx"

set-azcontext $subscription

az ad sp create-for-rbac -n "spn_name" --skip-assignment
