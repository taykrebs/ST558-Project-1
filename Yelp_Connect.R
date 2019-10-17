#Connect using my registered API key
client_secret= '95v1V9M1x19gEx01PauGtt4kdDlniZCQYE_yeTIEMjK0XxElPCNXPWOdshRct88gFfRKYIvpc3RNWRZq2DJMxxmyvFSRT7Iy6TP6ARigrFFDQgmJbZJdctwuS1afXXYx'
Sys.setenv(YELP_CLIENT_ID='ybHtEOnY86fqGade1NALYQ')
Sys.setenv(YELP_SECRET='95v1V9M1x19gEx01PauGtt4kdDlniZCQYE_yeTIEMjK0XxElPCNXPWOdshRct88gFfRKYIvpc3RNWRZq2DJMxxmyvFSRT7Iy6TP6ARigrFFDQgmJbZJdctwuS1afXXYx')

yelp_app <- oauth_app("yelp", key = Sys.getenv("YELP_CLIENT_ID"),
                      secret = Sys.getenv("YELP_SECRET"))

yelp_endpoint <- oauth_endpoint(NULL,
                                authorize = "https://api.yelp.com/oauth2/token",
                                access = "https://api.yelp.com/oauth2/token")

token <- oauth2.0_token(yelp_endpoint, yelp_app,
                        user_params = list(grant_type = "client_credentials"),
                        use_oob = TRUE)
