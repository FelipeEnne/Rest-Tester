require "net/http"
require "uri"

class RestTester
  def get_url(url)
    puts request(:get, url)
  end

  def post_url(url)
    puts request(:post, url)
  end

  def index_page
    "http://localhost:3000"
  end

  def users_page
    "http://localhost:3000/users"
  end

  def show_page
    "http://localhost:3000/users/1"
  end

  def new_page
    "http://localhost:3000/users/new"
  end

  def edit_page
    "http://localhost:3000/users/1/edit"
  end

  def create_page
    "http://localhost:3000/users"
  end

  private

  def request(method, url)
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request =
      case method
      when :get then Net::HTTP::Get.new(uri)
      when :post then Net::HTTP::Post.new(uri)
      else
        raise ArgumentError, "unsupported method: #{method}"
      end

    response = http.request(request)
    response.body
  end
end

rest_tester = RestTester.new

# rest_tester.get_url(rest_tester.index_page)
# rest_tester.get_url(rest_tester.users_page)
# rest_tester.get_url(rest_tester.show_page)
# rest_tester.get_url(rest_tester.new_page)
# rest_tester.get_url(rest_tester.edit_page)

rest_tester.post_url(rest_tester.create_page)
