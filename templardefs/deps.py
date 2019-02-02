'''
dependencies for this project
'''

def populate(d):
    d.tools=[
        #'tidy-html5',
    ]
    d.packs=[
        'tidy',
    ]

def get_deps():
    return [
        __file__, # myself
    ]
