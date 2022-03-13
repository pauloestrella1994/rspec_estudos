require 'student'
require 'course'

describe 'Stub' do
  it '#has_finished?' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?)
      .with(an_instance_of(Course))
      .and_return(true)
    
    course_finished = student.has_finished?(course)
    expect(course_finished).to be_truthy
  end

  it 'Argumentos Dinâmicos' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      if arg == :hello
        "olá"
      elsif arg == :hi
        "Hi!!!"
      end
    end

    expect(student.foo(:hello)).to eq("olá")
    expect(student.foo(:hi)).to eq("Hi!!!")
  end
end
