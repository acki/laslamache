class Ability
  include CanCan::Ability

  def initialize( user )
    # everybody
    can :read, [ Category, Message, Offer, Question, Task]

    if not user
      # anonymous
      cannot :create, [ Task ]

    elsif user.login == 'jone'
      # mr. jone
      can :manage, :all

    else
      # logged in
      can :read, :all
      can :create, [ Task, Message, Offer, Question, Task ]
    end
  end
end

