class Fastly
  # An individual host you want to serve assets off
  class Backend < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :address, :ipv4, :ipv6, :hostname, :use_ssl, :client_cert, :port, 
                  :connect_timeout, :first_byte_timeout, :between_bytes_timeout, :error_threshold, :max_conn, :weight, :comment, :healthcheck, :auto_loadbalance, :request_condition

    ## 
    # :attr: service_id
    # 
    # The id of the service this belongs to.
    # 

    ## 
    # :attr: version
    # 
    # The number of the version this belongs to.
    # 

    ## 
    # :attr: name
    # 
    # The name of this backend.
    # 

    ## 
    # :attr: address
    # 
    # A magic field - will automagically be set to whichever of ipv4, ipv6 or hostname is currently set.
    # 
    # Conversely if you set the address field then the correct field from ipv4, ipv6 or hostname will be set.
    # 

    ## 
    # :attr: ipv4
    # 
    # the ipv4 address of the host to serve assets (this, hostname or ipv6 must be set)
    # 

    ## 
    # :attr: ipv6
    # 
    # the ipv6 address of the host to serve assets (this, hostname or ipv4 must be set)
    # 

    ## 
    # :attr: hostname
    # 
    # the hostname to serve assets from (this, ipv4 or ipv6 must be set)
    # 

    ## 
    # :attr: port
    # 
    # the port to connect to (default 80)
    # 

    ## 
    # :attr: use_ssl
    # 
    # whether to use ssl to get to the backend (default 0 i.e false)
    # 

    ## 
    # :attr: connect_timeout
    # 
    # how long in milliseconds to wait for a connect before declaring the backend out of rotation (default 1,000)
    # 

    ## 
    # :attr: first_byte_timeout
    # 
    # how long in milliseconds to wait for the first bytes before declaring the host out of rotation (default 15,000)
    # 

    ## 
    # :attr: between_bytes_timeout
    # 
    # how long in milliseconds to wait between bytes before declaring the backend out of rotation (default 10,000)
    # 

    ## 
    # :attr: error_threshold
    # 
    # how many errors before declaring the backend out of rotation (default 0, 0 meaning turned off)
    # 

    ## 
    # :attr: max_conn
    # 
    # the maximum number of connections to this backend (default 20)
    # 

    ## 
    # :attr: weight
    # 
    # the weight assigned to this backend (default 100)
    
    ##
    # :attr: healthcheck
    #
    # the name of a healthcheck to associate with this backend. See the Healthcheck object
    
    ## 
    # :attr: auto_loadbalance
    #
    # set to true if you want to auto_loadbalance, set to false if you don't want to auto_loadbalance
    
    ##
    # :attr: request_condition
    #
    # name of a request_condition to filter the backend on
  end
end