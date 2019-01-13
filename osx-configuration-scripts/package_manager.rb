module PackageManager
  extend self

  FORMULAES = %w(
    chruby
    fzf
    git
    postgresql
    ruby-build
    ruby-install
    the_silver_searcher
    wget
  ).freeze

  APPLICATIONS = %w(
    google-chrome
    iterm2
    spotify
  ).freeze

  def run
    update_package_manager

    install_formulaes
    update_outdated_formulaes

    install_applications
  end

  private

  def install_applications
    missing_applications = APPLICATIONS - `brew cask list`.split("\n")
    if missing_applications.empty?
      'No missing applications'
    else
      command = "brew cask install #{missing_applications.join(' ')}"
      system command
    end

    if missing_applications.include?('fzf')
      # Post-install scripts
      #   Install useful key bindings and fuzzy completion
      command = '$(brew --prefix)/opt/fzf/install'
      system command
    end
  end

  def update_outdated_formulaes
    system 'brew upgrade'
  end

  def install_formulaes
    missing_formulaes = FORMULAES - `brew list`.split("\n")
    if missing_formulaes.empty?
      puts 'No missing formulaes'
    else
      command = "brew install #{missing_formulaes.join(' ')}"
      system command
    end
  end

  def update_package_manager
    system 'brew update'
  rescue Errno::ENOENT
    # Install package manager
    system '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'
  end

  def system(command)
    IO.popen(command) do |io|
      puts "Running #{command.inspect}"
      while line = io.gets do
        puts line
      end
    end
  end
end
