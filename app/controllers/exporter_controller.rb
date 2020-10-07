class ExporterController < ApplicationController
  before_action :authenticate_user!
  layout 'QuestionLayout'
  def questions
    @data = Quiz.find(params[:id])
    @c = Array.new
    @q = Array.new
    if @data.content != nil then
      @c.push((@data.content.gsub(/(\\r\\n|\\r|\\n)/, "\n")).split(',').map { |m| m.delete('[]"')})
      if @data.quiz != nil then
        @q.push((@data.quiz.gsub(/(\\r\\n|\\r|\\n)/, "\n")).split(',').map { |m| m.delete('[]"')})
      end
    end
  end
end
