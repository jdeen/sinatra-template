requirejs.config({
  baseUrl: '/components',
  
  paths:
    # Libraries
    'jquery': 'jquery/dist/jquery.min'
    'bootstrap': 'bootstrap/dist/js/bootstrap.min'
  
    # Pages
    'index_page': '/js/pages/index'

  shim: 
    'bootstrap': 
      deps: [ 'jquery' ]

    # Pages
    'index_page': 
      deps: [ 'bootstrap' ]
})

