class PerfomancesController <

  before_action :set_perfomance, only: %i[show edit update destroy]
  before_action :find_student, only: %i[new create]

  def index
  end

  def new
    @perfomance = Perfomance.new
  end

  def destroy
    @perfomance.destroy
    redirect_to teacher_student_perfomances_path
  end

  def edit
  end

  def create
    @perfomance = Perfomance.new(perfomance_params.merge(student_id: @student))

    if @perfomance.save
      redirect_to teacher_student_path(@perfomance)
    else
      render :edit
    end
  end

  def update
    if @perfomance.update(perfomance_params)
      redirect_to teacher_student_perfomances_path(@perfomance)
    else
      render :edit
    end
  end

  private

  def set_perfomance
    @perfomance = Perfomance.find(params[:id])
  end

  def find_student
    @student = Student.find(params[:student_id])
  end

  def perfomance_params
    params.require(:perfomance).permit(:mark, :student_id, :subject_id)
  end
end
