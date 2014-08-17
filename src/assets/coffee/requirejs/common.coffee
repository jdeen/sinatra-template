requirejs.config({
  baseUrl: '/components',
  
  paths:
    # Libraries
    'jquery': 'jquery/dist/jquery.min'
    'bootstrap': 'bootstrap/dist/js/bootstrap.min'
    'parsleyjs': 'parsleyjs/dist/parsley.min'
    
    # Custom
    'parsley_bootstrap': '/js/lib/parsley_bootstrap'

    # Pages
    'index_page': '/js/pages/index'
    'register_page': '/js/pages/register'
    'login_page': '/js/pages/login'

  shim: 
    'bootstrap': 
      deps: [ 'jquery' ]
  
    'parsleyjs': 
      deps: [ 'jquery' ]

    # Custom
    'parsley_bootstrap':
      deps: [ 'bootstrap', 'parsleyjs' ]

    # Pages
    'index_page': 
      deps: [ 'bootstrap' ]

    'register_page':
      deps: [ 'bootstrap', 'parsleyjs' ]
    
    'login_page':
      deps: [ 'bootstrap', 'parsleyjs', 'parsley_bootstrap' ]
})

