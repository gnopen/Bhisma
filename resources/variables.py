from datetime import datetime

TODAY = datetime.now()


# DEV , STAGING, DEVQA
ENVIRONMENT = "DEVQA"
WEBSITE_URL = ""

if ENVIRONMENT=="DEV":
    WEBSITE_URL =  "https://dev-ecm-mt.bhisma.cloud/"
    WEBSITE_ADMIN =  "https://admin-ecm.bhisma.cloud/"
elif ENVIRONMENT=="DEVQA":
    WEBSITE_URL =  "https://dev-qa.bhisma.cloud/"
    WEBSITE_ADMIN =  "https://dev-qa-admin.bhisma.cloud/"
elif ENVIRONMENT=="STAGING":
    WEBSITE_URL =  "https://staging.bhisma.cloud/"
    WEBSITE_ADMIN =  "https://admin.bhisma.cloud/"

DELAY = 4
LANGUAGE =  "en"
TEMPLATE = "mt"
SITE_ID = "staging.bhisma.cloud"
BROWSER = "Chrome"
EMAIL_ADMIN = "admin@gmail.com"
PASSWORD_ADMIN = "p@ssw0rd24"
EMAIL_USER = "admin@bhisma.cloud"
PASSWORD_USER = "P@ssw0rd24"
# EMAIL_USER = "admin@gmail.com"
# PASSWORD_USER = "p@ssw0rd24"