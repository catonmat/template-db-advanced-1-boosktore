class ApplicationController < ActionController::Base
    before_action do
        Rack::MiniProfiler.authorize_request
        Rack::MiniProfiler.config.position = 'top-left'
        Rack::MiniProfiler.config.show_total_sql_count = true
        Rack::MiniProfiler.config.skip_paths = ['/favicon.ico']
    end
end
