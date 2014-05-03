class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      can :read, Collection
      can :create, Collection
      can :update, Collection, user_id: user.id
      can :destroy, Collection, user_id: user.id
    end
  end
end
