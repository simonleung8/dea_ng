module Dea
  class UserFacingError < RuntimeError; end

  class HealthCheckFailed < UserFacingError
    def to_s
      "didn't start accepting connections"
    end
  end

  class MissingStartCommand < UserFacingError
    def to_s
      "missing start command"
    end
  end
end
