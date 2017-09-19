class SalesController < ApplicationController
  def index;end

  def sales_report
    @sales_type = params[:sales_type]
    bookings = FlatBooking.where('date_of_booking BETWEEN ? AND ?', params[:start_date], params[:end_date])
    if @sales_type.eql? "Monthly"
      monthly_report = bookings.group_by{|b| b.date_of_booking.strftime('%B')}
      @report = monthly_report.map{|month, report| [month, report.map{|a| a.flat_rate}.sum]}
    else
      yearly_report = bookings.order(:date_of_booking).group_by{|d| d.date_of_booking.year}
      @report = yearly_report.map{|year, report| [year, report.map{|b| b.flat_rate}.sum]}
    end
  end

end
