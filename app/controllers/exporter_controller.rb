class ExporterController < ApplicationController
  layout 'QuestionLayout'
  def questions
    @data = Quiz.find(params[:id])
    @c = Array.new
    @q = Array.new
    if @data.content != nil then
      @c.push(@data.content.split(',').map { |m| m.delete('[]"\\')})
      if @data.quiz != nil then
        @q.push(@data.quiz.split(',').map { |m| m.delete('[]"\\')})
      end
    end
  end
end
