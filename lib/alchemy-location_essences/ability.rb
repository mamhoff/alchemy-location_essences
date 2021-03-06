class Alchemy::LocationEssences::Ability
  include CanCan::Ability

  def initialize(user)
    return if user.nil?
    if user.has_role?(:author) || user.has_role?(:editor) || user.has_role?(:admin)
      can :manage, Alchemy::EssenceLocation
    end
  end

end