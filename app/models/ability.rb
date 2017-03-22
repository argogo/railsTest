class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #guest user (not logged in)
    if user.admin?
      can :manage, :all
      can :destroy, Product
      can :update, Product
      can :destroy, Comment
    else
      can :read, :all
      can :manage, User, id: user.id
      cannot :destroy, Product
      cannot :update, Product
      cannot :destroy, Comment
    end
  end
end
