module Versjons
  class ReleaseInfo

    def initialize(root_path)
      @root_path = root_path
    end

    def version
      read_and_strip(version_path)
    end

    def sha
      read_and_strip(sha_path)
    end

    def timestamp
      if File.exists?(version_path)
        File.mtime(version_path)
      end
    end

    private

    def read_and_strip(path)
      if File.exists?(path)
        File.read(path).strip
      end
    end

    def version_path
      File.join(meta_path, "VERSION")
    end

    def sha_path
      File.join(meta_path, "SHA")
    end

    def meta_path
      File.join(@root_path, ".release_info")
    end
  end
end
