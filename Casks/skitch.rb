# Original: https://raw.githubusercontent.com/Homebrew/homebrew-cask/d07a9731d6e1d869542563bf94990cc26e90cb8b/Casks/skitch.rb
cask 'skitch' do
  version '2.8'
  sha256 '55a248250ee81011849b1f6c89c39391fddecf55375876d2d89966584cba4cbe'

  url "https://cdn1.evernote.com/skitch/mac/release/Skitch-#{version}.zip"
  name 'Skitch'
  desc 'Screen capture tool with mark up and sharing features (the last version support dragging to another app)'
  homepage 'https://evernote.com/products/skitch'

  auto_updates true

  app 'Skitch.app'

  zap trash: [
               '~/Library/Preferences/com.plasq.skitch.plist',
               '~/Library/Preferences/com.plasq.skitch.history',
               '~/Library/Application Support/Skitch',
               '~/Library/Application Support/com.skitch.skitch',
               '~/Library/Caches/com.evernote.ENAttachmentToPDFHelper',
               '~/Library/Caches/com.skitch.skitch',
               '~/Library/Preferences/com.evernote.ENAttachmentToPDFHelper.plist',
               '~/Library/Preferences/com.skitch.skitch.plist',
               '~/Library/Saved Application State/com.skitch.skitch.savedState',
             ]
end
