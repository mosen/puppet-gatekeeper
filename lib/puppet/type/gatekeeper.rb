Puppet::Type.newtype(:gatekeeper) do
  @doc = "Manage osx gatekeeper policy."

  newparam(:rule) do
    desc "The name of the policy rule that this resource represents. The rule name `master` is a reserved rule meaning
    the entire system"

    isnamevar
  end

  newproperty(:enable) do
    desc "Whether the given security rule is enabled or not. If the rule name is `master` then the entire system is
    enabled or disabled."

    newvalues(:true, :false)
  end
end
