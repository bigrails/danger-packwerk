# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `cork` gem.
# Please instead update this file by running `bin/tapioca gem cork`.

module Cork; end

# provides support for UI output. Cork provides support for nested
# sections of information and for a verbose mode.
class Cork::Board
  # Initialize a new instance.
  #
  # @param verbose [Boolean] When verbose is true verbose output is printed.
  #   this defaults to true
  # @param silent [Boolean] When silent is true all output is supressed.
  #   This defaults to false.
  # @param ansi [Boolean] When ansi is true output may contain ansi
  #   color codes. This is true by default.
  # @param input [IO] The file descriptor to read the user input.
  # @param out [IO] The file descriptor to print all output to.
  # @param err [IO] The file descriptor to print all errors to.
  # @return [Board] a new instance of Board
  def initialize(verbose: T.unsafe(nil), silent: T.unsafe(nil), ansi: T.unsafe(nil), input: T.unsafe(nil), out: T.unsafe(nil), err: T.unsafe(nil)); end

  # Returns the value of attribute ansi.
  def ansi; end

  # Returns the value of attribute ansi.
  def ansi?; end

  # @return [Bool] Whether the wrapping of the strings to the width of the
  #   terminal should be disabled.
  def disable_wrap; end

  # @return [Bool] Whether the wrapping of the strings to the width of the
  #   terminal should be disabled.
  def disable_wrap=(_arg0); end

  # @return [Bool] Whether the wrapping of the strings to the width of the
  #   terminal should be disabled.
  def disable_wrap?; end

  # @return [error] The error specification containing the UI error.
  def err; end

  # Gets input from the configured input.
  def gets; end

  # Returns the value of attribute indentation_level.
  def indentation_level; end

  # Prints an info to the user. The info is always displayed.
  # It respects the current indentation level only in verbose
  # mode.
  #
  # Any title printed in the optional block is treated as a message.
  #
  # @param message [String] The message to print.
  def info(message); end

  # @return [input] The input specification that contains the user input
  #   for the UI.
  def input; end

  # Prints a message with a label.
  #
  # @param label [String] The label to print.
  # @param value [#to_s] The value to print.
  # @param justification [FixNum] The justification of the label.
  def labeled(label, value, justification = T.unsafe(nil)); end

  # Prints a verbose message taking an optional verbose prefix and
  # a relative indentation valid for the UI action in the passed
  # block.
  #
  # @todo Clean interface.
  def message(message, verbose_prefix = T.unsafe(nil), relative_indentation = T.unsafe(nil)); end

  # Prints a verbose message taking an optional verbose prefix and
  # a relatvie indentation valid for the UI action in the passed block.
  def notice(message); end

  # @return [output] The output specification containing the UI output.
  def out; end

  # The returned path is quoted. If the argument is nil it returns an empty
  # string.
  #
  # @param pathname [#to_str, Nil] The path to return.
  # @param relative_to [Pathname]
  def path(pathname, relative_to = T.unsafe(nil)); end

  # Prints a message without a new line unless silent.
  def print(message); end

  # Prints the stored warnings. This method is intended to be called at the
  # end of the execution of the binary.
  #
  # @return [void]
  def print_warnings; end

  # Prints a message followed by a new line unless silent.
  def puts(message = T.unsafe(nil)); end

  # Prints a message respecting the current indentation level and
  # wrapping it to the terminal width if necessary.
  def puts_indented(message = T.unsafe(nil)); end

  # Prints a title taking an optional verbose prefix and
  # a relative indentation valid for the UI action in the passed
  # block.
  #
  # In verbose mode titles are printed with a color according
  # to their level. In normal mode titles are printed only if
  # they have nesting level smaller than 2.
  #
  # @param title [String] The title to print
  # @param verbose_prefix [String] See #message
  # @param relative_indentation [FixNum] The indentation level relative to the current,
  #   when the message is printed.
  # @todo Refactor to title (for always visible titles like search)
  #   and sections (titles that represent collapsible sections).
  def section(title, verbose_prefix = T.unsafe(nil), relative_indentation = T.unsafe(nil), titled = T.unsafe(nil)); end

  # Returns the value of attribute silent.
  def silent; end

  # Returns the value of attribute silent.
  def silent?; end

  # A title opposed to a section is always visible
  #
  # @param title [String] The title to print
  # @param verbose_prefix [String] See #message
  # @param relative_indentation [FixNum] The indentation level relative to the current,
  #   when the message is printed.
  def title(title, verbose_prefix = T.unsafe(nil), relative_indentation = T.unsafe(nil)); end

  # Returns the value of attribute verbose.
  def verbose; end

  # Returns the value of attribute verbose.
  def verbose?; end

  # Stores important warning to the user optionally followed by actions that
  # the user should take. To print them use {#print_warnings}.
  #
  #  @param [String]  message The message to print.
  #  @param [Array]   actions The actions that the user should take.
  #  @param [Boolean] verbose_only When verbose_only is configured to
  #                   true, the warning will only be printed when
  #                   Board is configured to print verbose messages.
  #                   This is false by default.
  #
  #  @return [void]
  def warn(message, actions = T.unsafe(nil), verbose_only = T.unsafe(nil)); end

  # @return [warnings] The warnings specification containing the UI warnings.
  def warnings; end

  private

  # Sets the attribute indentation_level
  #
  # @param value the value to set the attribute indentation_level to.
  def indentation_level=(_arg0); end

  def puts_title(title, verbose_prefix); end

  # Returns the value of attribute title_level.
  def title_level; end

  # Sets the attribute title_level
  #
  # @param value the value to set the attribute title_level to.
  def title_level=(_arg0); end

  # Prints a title taking an optional verbose prefix and
  # a relative indentation valid for the UI action in the passed
  # block.
  #
  # In verbose mode titles are printed with a color according
  # to their level. In normal mode titles are printed only if
  # they have nesting level smaller than 2.
  #
  # @param title [String] The title to print
  # @param verbose_prefix [String] See #message
  # @param relative_indentation [FixNum] The indentation level relative to the current,
  #   when the message is printed.
  # @todo Refactor to title (for always visible titles like search)
  #   and sections (titles that represent collapsible sections).
  def wrap_string(string, indent = T.unsafe(nil)); end
end

module Cork::TextWrapper
  private

  # @return [String] Lifted straigth from Actionview. Thanks Guys!
  def strip_heredoc(string); end

  # @return [String] Lifted straigth from Actionview. Thanks Guys!
  def word_wrap(line, line_width); end

  # @param string [String] The string to format.
  # @param indent [Fixnum] The number of spaces to insert before the string.
  # @param width [Fixnum] The width to use to format the string if the terminal
  #   is too wide.
  # @return [String] Wraps a formatted string (e.g. markdown) by stripping
  #   heredoc indentation and wrapping by word to the terminal width
  #   taking into account a maximum one, and indenting the string.
  #   Code lines (i.e. indented by four spaces) are not wrapped.
  def wrap_formatted_text(string, indent = T.unsafe(nil), width = T.unsafe(nil)); end

  # @param string [String] The string to indent.
  # @param indent [Fixnum] The number of spaces to insert before the string.
  # @param width [Fixnum] The width to use when formatting the string in the terminal
  # @return [String] Wraps a string to the terminal width taking into
  #   account the given indentation.
  def wrap_with_indent(string, indent = T.unsafe(nil), width = T.unsafe(nil)); end

  class << self
    # @return [String] Lifted straigth from Actionview. Thanks Guys!
    def strip_heredoc(string); end

    # @return [String] Lifted straigth from Actionview. Thanks Guys!
    def word_wrap(line, line_width); end

    # @param string [String] The string to format.
    # @param indent [Fixnum] The number of spaces to insert before the string.
    # @param width [Fixnum] The width to use to format the string if the terminal
    #   is too wide.
    # @return [String] Wraps a formatted string (e.g. markdown) by stripping
    #   heredoc indentation and wrapping by word to the terminal width
    #   taking into account a maximum one, and indenting the string.
    #   Code lines (i.e. indented by four spaces) are not wrapped.
    def wrap_formatted_text(string, indent = T.unsafe(nil), width = T.unsafe(nil)); end

    # @param string [String] The string to indent.
    # @param indent [Fixnum] The number of spaces to insert before the string.
    # @param width [Fixnum] The width to use when formatting the string in the terminal
    # @return [String] Wraps a string to the terminal width taking into
    #   account the given indentation.
    def wrap_with_indent(string, indent = T.unsafe(nil), width = T.unsafe(nil)); end
  end
end

Cork::VERSION = T.let(T.unsafe(nil), String)
