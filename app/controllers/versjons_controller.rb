class VersjonsController < ActionController::Base
  def index
    render json: {
      version: release_info.version,
      sha: release_info.sha,
      timestamp: release_info.timestamp
    }
  end

  private

  def release_info
    Rails.application.config
  end
end
