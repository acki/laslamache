class Ability
  include CanCan::Ability

  def initialize( user )
    # everybody

    cannot :read, [User, UsersController ]
    can :read, [ Category, Message, Offer, Question, Task ]
    can :create, [ User, UserSession ]
    can :new, [ User, UserSession ]

    if not user
      # anonymous
      cannot :create, [ Task ]

    elsif user.is?(:manager)
      # manager
      can :manage, :all
    else
      # logged in
      can :create, [ Task, Message, Offer, Question, Task ]
      can :profile, User
    end
  end
end

