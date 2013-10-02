Puppet::Type.type(:gatekeeper).provide :spctl, :parent => Puppet::Provider do
  desc "This provider manages osx gatekeeper policy via the `spctl` command line tool"

  commands :spctl => "/usr/sbin/spctl"


  def enable
    begin
      status = spctl '--status'
    rescue
      # this normally happens if the security assessment is disabled, because a non-zero exit status causes an error.
    end

    if status == "assessments enabled\n"
      :true
    else
      :false
    end
  end

  def enable=(enabled)
    if enabled
      spctl '--master-enable'
    else
      spctl '--master-disable'
    end
  end
end
