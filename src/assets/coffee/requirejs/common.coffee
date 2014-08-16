requirejs.config
  baseUrl: '/js/components',
  
  paths:
    # Libraries
    jquery: 'jquery/dist/jquery.min'
    bootstrap: 'bootstrap/dist/js/bootstrap.min'
  
    # Pages
    index_page: '/js/pages/index'

  shim: 
    bootstrap: [ 'jquery' ]

    # Pages
    index_page: [ 'bootstrap' ]


