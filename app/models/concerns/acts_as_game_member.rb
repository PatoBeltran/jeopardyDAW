module ActsAsGameMember
  def self.included(base)
    base.has_one :game_member, :as => :memberable, :dependent => :destroy, :autosave => true
    base.validate :member_must_be_valid
    base.extend ClassMethods
    base.define_game_member_accessors
  end

  def method_missing(meth, *args, &blk)
    game_member.send(meth, *args, &blk)
  rescue NoMethodError
    super
  end

  def deep_inspect
    "#{self.inspect} -- #{self.game_member.inspect}"
  end

  protected

  def member_must_be_valid
    if game_member && !game_member.valid?
      game_member.errors.each do |attr, message|
        errors.add(attr, message)
      end
    end
  end

  module ClassMethods
    def define_game_member_accessors
      #We check the user columns to declare them as attributes to delegate
      all_attributes = GameMember.columns.map(&:name)
      attributes_to_delegate = all_attributes - ["created_at", "updated_at", "id", "memberable_type", "memberable_id"]

      #User method delegation
      attributes_to_delegate.each do |attrib|
        class_eval <<-RUBY
          def #{attrib}
            game_member.#{attrib}
          end
          def #{attrib}=(value)
            self.game_member.#{attrib} = value
          end
          def #{attrib}?
            self.game_member.#{attrib}?
          end
        RUBY
      end
    end
  end
end
