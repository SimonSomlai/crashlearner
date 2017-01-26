module TasksHelper
  def task_status(task, reverse = false)
    status = reverse ? !task.status : task.status
    status ? "complete" : "incomplete"
  end
end
