require 'versjons/release_info'

info = Versjons::ReleaseInfo.new(Rails.root)
config = Dummy::Application.config

config.version = info.version
config.sha = info.sha
config.timestamp = info.timestamp
