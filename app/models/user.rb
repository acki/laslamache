class User < ActiveRecord::Base
  acts_as_authentic
  ROLES = [:manager, :moderator, :banned]

  def roles=(roles)
    roles = roles.map{|r| r.to_sym}
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
  end

  def roles
    ROLES.reject do |r|
      ((roles_mask || 0) & 2**ROLES.index(r)).zero?
    end
  end

  def is?(role)
    roles.include?(role.to_sym)
  end

end
