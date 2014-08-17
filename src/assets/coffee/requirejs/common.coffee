requirejs.config({
  baseUrl: '/components',
  
  paths:
    # Libraries
    'jquery': 'jquery/dist/jquery.min'
    'bootstrap': 'bootstrap/dist/js/bootstrap.min'
  
    # Pages
    'index_page': '/js/pages/index'
    'register_page': '/js/pages/register'

  shim: 
    'bootstrap': 
      deps: [ 'jquery' ]

    # Pages
    'index_page': 
      deps: [ 'bootstrap' ]

    'register_page':
      deps: [ 'bootstrap' ]
})

