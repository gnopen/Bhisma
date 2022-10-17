from robot.api import logger
from robot.api.logger import info, debug, trace, console

# example of accessing a variable from variables.py
from variables import TODAY


class LoginLibrary:
    """Give this library a proper name and document it."""

    def example_python_keyword(self):
        logger.info("This is Python!")
        logger.info(f"... and today is {TODAY}")

    def __init__(self) -> None:
        self.email = ''
        self.password = ''
        self.description = ''
        self.tag=''
        self.type=''

    def set_email(self, email):
        '''Sets the users email and stores it for authentication.'''
        self.login = email
        info(f'User email set to: {email}')

    def set_password(self, password):
        '''Sets the password and stores it for authentication.'''
        self.password = password
        info(f'Password set.')

    def set_description(self, description):
        '''Sets the description and stores it for authentication.'''
        self.password = description
        info(f'descritpion set to: {description}')

    def set_tag(self, tag):
        '''Sets the tag and stores it for authentication.'''
        self.tag = tag
        info(f'tag set to: {tag}')

    def set_type(self, type):
        '''Sets the type and stores it for authentication.'''
        self.type = type
        info(f'type set to: {type}')
       
    


    

    
