class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #guest user (not logged in)
    if user.admin?
      can :manage, :all
      can :destroy, Product
    else
      cannot :destroy, Product
      can :read, :all
      can :manage, User, id: user.id
    end
  end
end
