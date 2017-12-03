# Procs and lambdas can also be used with rack.
# Rack accepts any objects that respond to #call, aside from classes.
# This makes Procs and lambdas ideal for testing out concepts in rack and seeing what makes it tick

require 'rack'

app1 = Proc.new do |env|
    ['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
end

app2 = ->(env) { 
  [ 
    '200',
    { 'Content-Type' => 'text/html' },
    ['Served from lambda']
  ]
}

# Rack::Handler::WEBrick.run app2
Rack::Handler::WEBrick.run app1 
