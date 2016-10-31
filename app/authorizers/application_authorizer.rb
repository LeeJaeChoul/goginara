# Other authorizers should subclass this one
class ApplicationAuthorizer < Authority::Authorizer

  # :admin 권한이 있는 사용자는 모든 권한을 가짐.
  def self.default(adjective, user)
    user.has_role? :admin
  end
end
