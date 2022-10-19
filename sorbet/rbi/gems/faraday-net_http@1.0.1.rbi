# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `faraday-net_http` gem.
# Please instead update this file by running `bin/tapioca gem faraday-net_http`.

# This is the main namespace for Faraday.
#
# It provides methods to create {Connection} objects, and HTTP-related
# methods to use directly.
#
# @example Helpful class methods for easy usage
#   Faraday.get "http://faraday.com"
# @example Helpful class method `.new` to create {Connection} objects.
#   conn = Faraday.new "http://faraday.com"
#   conn.get '/'
module Faraday
  class << self
    # @overload default_adapter
    # @overload default_adapter=
    def default_adapter; end

    # Documented elsewhere, see default_adapter reader
    def default_adapter=(adapter); end

    # @overload default_connection
    # @overload default_connection=
    def default_connection; end

    # Documented below, see default_connection
    def default_connection=(_arg0); end

    # Gets the default connection options used when calling {Faraday#new}.
    #
    # @return [Faraday::ConnectionOptions]
    def default_connection_options; end

    # Sets the default options used when calling {Faraday#new}.
    #
    # @param options [Hash, Faraday::ConnectionOptions]
    def default_connection_options=(options); end

    # Tells Faraday to ignore the environment proxy (http_proxy).
    # Defaults to `false`.
    #
    # @return [Boolean]
    def ignore_env_proxy; end

    # Tells Faraday to ignore the environment proxy (http_proxy).
    # Defaults to `false`.
    #
    # @return [Boolean]
    def ignore_env_proxy=(_arg0); end

    # Gets or sets the path that the Faraday libs are loaded from.
    #
    # @return [String]
    def lib_path; end

    # Gets or sets the path that the Faraday libs are loaded from.
    #
    # @return [String]
    def lib_path=(_arg0); end

    # Initializes a new {Connection}.
    #
    # @example With an URL argument
    #   Faraday.new 'http://faraday.com'
    #   # => Faraday::Connection to http://faraday.com
    # @example With everything in an options hash
    #   Faraday.new url: 'http://faraday.com',
    #   params: { page: 1 }
    #   # => Faraday::Connection to http://faraday.com?page=1
    # @example With an URL argument and an options hash
    #   Faraday.new 'http://faraday.com', params: { page: 1 }
    #   # => Faraday::Connection to http://faraday.com?page=1
    # @option options
    # @option options
    # @option options
    # @option options
    # @option options
    # @option options
    # @param url [String, Hash] The optional String base URL to use as a prefix
    #   for all requests.  Can also be the options Hash. Any of these
    #   values will be set on every request made, unless overridden
    #   for a specific request.
    # @param options [Hash]
    # @return [Faraday::Connection]
    def new(url = T.unsafe(nil), options = T.unsafe(nil), &block); end

    # Internal: Requires internal Faraday libraries.
    #
    # @param libs [Array] one or more relative String names to Faraday classes.
    # @private
    # @return [void]
    def require_lib(*libs); end

    # Internal: Requires internal Faraday libraries.
    #
    # @param libs [Array] one or more relative String names to Faraday classes.
    # @private
    # @return [void]
    def require_libs(*libs); end

    # @return [Boolean]
    def respond_to_missing?(symbol, include_private = T.unsafe(nil)); end

    # The root path that Faraday is being loaded from.
    #
    # This is the root from where the libraries are auto-loaded.
    #
    # @return [String]
    def root_path; end

    # The root path that Faraday is being loaded from.
    #
    # This is the root from where the libraries are auto-loaded.
    #
    # @return [String]
    def root_path=(_arg0); end

    private

    # Internal: Proxies method calls on the Faraday constant to
    # .default_connection.
    def method_missing(name, *args, &block); end
  end
end

# Base class for all Faraday adapters. Adapters are
# responsible for fulfilling a Faraday request.
class Faraday::Adapter
  extend ::Faraday::MiddlewareRegistry
  extend ::Faraday::DependencyLoader
  extend ::Faraday::Adapter::Parallelism
  extend ::Faraday::AutoloadHelper

  # @return [Adapter] a new instance of Adapter
  def initialize(_app = T.unsafe(nil), opts = T.unsafe(nil), &block); end

  def call(env); end

  # Close any persistent connections. The adapter should still be usable
  # after calling close.
  def close; end

  # Yields or returns an adapter's configured connection. Depends on
  # #build_connection being defined on this adapter.
  #
  # @param env [Faraday::Env, Hash] The env object for a faraday request.
  # @return The return value of the given block, or the HTTP connection object
  #   if no block is given.
  # @yield [conn]
  def connection(env); end

  private

  # Fetches either a read, write, or open timeout setting. Defaults to the
  # :timeout value if a more specific one is not given.
  #
  # @param type [Symbol] Describes which timeout setting to get: :read,
  #   :write, or :open.
  # @param options [Hash] Hash containing Symbol keys like :timeout,
  #   :read_timeout, :write_timeout, :open_timeout, or
  #   :timeout
  # @return [Integer, nil] Timeout duration in seconds, or nil if no timeout
  #   has been set.
  def request_timeout(type, options); end

  def save_response(env, status, body, headers = T.unsafe(nil), reason_phrase = T.unsafe(nil)); end
end

Faraday::Adapter::CONTENT_LENGTH = T.let(T.unsafe(nil), String)

class Faraday::Adapter::NetHttp < ::Faraday::Adapter
  # @return [NetHttp] a new instance of NetHttp
  def initialize(app = T.unsafe(nil), opts = T.unsafe(nil), &block); end

  def build_connection(env); end
  def call(env); end
  def net_http_connection(env); end

  private

  def configure_request(http, req); end
  def configure_ssl(http, ssl); end
  def create_request(env); end
  def perform_request(http, env); end
  def request_via_get_method(http, env, &block); end
  def request_via_request_method(http, env, &block); end
  def request_with_wrapped_block(http, env, &block); end
  def ssl_cert_store(ssl); end
  def ssl_verify_mode(ssl); end
end

Faraday::Adapter::NetHttp::NET_HTTP_EXCEPTIONS = T.let(T.unsafe(nil), Array)
Faraday::Adapter::TIMEOUT_KEYS = T.let(T.unsafe(nil), Hash)
Faraday::CONTENT_TYPE = T.let(T.unsafe(nil), String)
Faraday::CompositeReadIO = Faraday::Multipart::CompositeReadIO

# Aliases for Faraday v1, these are all deprecated and will be removed in v2 of this middleware
Faraday::FilePart = Multipart::Post::UploadIO

Faraday::METHODS_WITH_BODY = T.let(T.unsafe(nil), Array)
Faraday::METHODS_WITH_QUERY = T.let(T.unsafe(nil), Array)
module Faraday::NetHttp; end
Faraday::NetHttp::VERSION = T.let(T.unsafe(nil), String)
Faraday::ParamPart = Faraday::Multipart::ParamPart
Faraday::Parts = Multipart::Post::Parts
Faraday::Timer = Timeout

# multipart-post v2.2.0 introduces a new class hierarchy for classes like Parts and UploadIO
# For backwards compatibility, detect the gem version and use the right class
Faraday::UploadIO = Multipart::Post::UploadIO

Faraday::VERSION = T.let(T.unsafe(nil), String)
