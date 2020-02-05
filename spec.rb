class Person
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    if @middle_name == nil
      @first_name + " " + @last_name
    else
      @first_name + " " + @middle_name + " " + @last_name
    end
  end

  def full_name_with_middle_initial
    if @middle_name == nil
      @first_name + " " + @last_name
    else
      @first_name + " " + @middle_name[0, 1] + " " + @last_name
    end
  end

  def initials
    if @middle_name == nil
      @first_name[0, 1] + " " + @last_name[0, 1]
    else
      @first_name[0, 1] + " " + @middle_name[0, 1] + " " + @last_name[0, 1]
    end
  end
end

RSpec.describe Person do
  describe '#full_name' do
    it "concatenates first name, middle name, and last name with spaces" do
      person = Person.new(
      first_name: "Bob",
      middle_name: "Rob",
      last_name: "Roberts")

      expect(person.full_name).to eq("Bob Rob Roberts")
    end
  
    it "does not add extra spaces if middle name is missing" do
      person = Person.new(
        first_name: "John",
        last_name: "Johnson"
      )

      expect(person.full_name).to eq("John Johnson")
    end
  end

  describe "#full_name_with_middle_initial" do
    it "concatenates first name, middle initial, and last name with spaces" do
      person = Person.new(
        first_name: "Bob",
        middle_name: "Rob",
        last_name: "Roberts"
      )

      expect(person.full_name_with_middle_initial).to eq("Bob R Roberts")
      end

      it "does not add extra spaces if middle name is missing" do
        person = Person.new(
          first_name: "John",
          last_name: "Johnson"
        )

        expect(person.full_name_with_middle_initial).to eq("John Johnson")
      end
    end

  describe"#initials"
  it "Concatenates the initials of the first name, middle name, and last name with spaces" do
    person = Person.new(
      first_name: "Bob",
      middle_name: "Rob",
      last_name: "Roberts"
    )

    expect(person.initials).to eq("B R R")
  end

  it "does not add extra spaces if middle name is missing" do
    person = Person.new(
      first_name: "John",
      last_name: "Johnson"
    )

    expect(person.initials).to eq("J J")
    end
  end
