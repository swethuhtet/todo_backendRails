class ApplicationController < ActionController::API
    def encode_token(payload)
      JWT.encode(payload,'mysecretkey')
    end

    def devode_token
      header = requests.headers['Authorization']
      if header
        token = header.split(" ")[1]
        begin
          JWT.decode(token,'mysecretkey')
        rescue JWT::DecodeError
            nil
        end
      end
    end
end
