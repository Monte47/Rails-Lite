require 'json'

class Flash

  def initialize(req)
    cookie = req.cookies["_rails_lite_app_flash"]
    @flash = {}
  end

  def [](key)
    @flash[key.to_s]
  end

  def []=(key, value)
    @flash[key.to_s] = value
  end

  def store_flash(res)
    res.set_cookie('_rails_lite_app_flash', path: '/', value: @flash.to_json)
  end

end
