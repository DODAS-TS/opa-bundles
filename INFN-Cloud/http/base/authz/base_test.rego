package http.base.authz


test_post_allowed {
  allow with input as { "claims": { "preferred_username": "dciangot",
                                    "iss": data.roles.permissions.issuer
                                  },
                        "bucket": "dciangot",
                        "action": "s3:ListBucket"
                      }
}

test_post_allowed {
  not allow with input as { "claims": { "preferred_username": "dciangot",
                                        "iss": data.roles.permissions.issuer
                                      },
                            "bucket": "spigaa",
                            "action": "s3:ListBucket"
                          }
}
