module Kernel
  def system!(cmd, *arg)
    system(cmd, *arg) || begin
      full_cmd = [cmd, *arg].compact.join(" ")
      raise("Command `#{full_cmd}` failed.")
    end
  end
end
