class Job
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :jobtype, type: String
  field :proposalid, type: String
  field :url, type: String
  field :from, type: String
  field :customer, type: String
  field :description, type: String
  field :app, type: String
  field :startdate, type: String
  field :enddate, type: String
  field :price, type: String
  field :status, type: String


  def self.search(model)
    _table = self
    if model.title
      _table = _table.where(title: /#{model.title}/i)
    end
    _table=_table.where(from: /#{model.from}/i)
    _table= _table.where(jobtype: /#{model.jobtype}/i)
    _table= _table.where(status: /#{model.status}/i)
  end


end
