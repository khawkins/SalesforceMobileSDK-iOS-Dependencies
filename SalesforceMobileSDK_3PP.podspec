#
#  Be sure to run `pod spec lint SalesforceMobileSDK_3PP.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "SalesforceMobileSDK_3PP"
  s.version      = "3.0.0"
  s.summary      = "Third Party Libraries for the Salesforce Mobile SDK"
  s.homepage     = "https://github.com/forcedotcom/SalesforceMobileSDK-iOS-Dependencies"

  s.license      = { :type => "Salesforce.com Mobile SDK License", :file => "LICENSE.md" }
  s.author             = { "Kevin Hawkins" => "khawkins@salesforce.com" }

  s.platform     = :ios, "6.0"

  #s.source       = { :git => "https://github.com/forcedotcom/SalesforceMobileSDK-iOS-Dependencies.git" :branch => "cocoapods" }

  s.subspec 'OpenSSL' do |openssl|

      openssl.preserve_paths = 'openssl/openssl/*.h', 'openssl/openssl_license.txt'
      openssl.vendored_libraries = 'openssl/libcrypto.a', 'openssl/libssl.a'
      openssl.libraries = 'ssl', 'crypto'

  end

  s.subspec 'SQLCipher' do |sqlcipher|

      sqlcipher.preserve_paths = 'sqlcipher/LICENSE'
      sqlcipher.vendored_libraries = 'sqlcipher/libsqlcipher.a'
      sqlcipher.libraries = 'sqlcipher'

  end

  s.subspec 'SalesforceCommonUtils' do |commonutils|

      commonutils.preserve_paths = 'SalesforceCommonUtils/Headers/SalesforceCommonUtils/*.h'
      commonutils.vendored_libraries = 'SalesforceCommonUtils/libSalesforceCommonUtils.a'
      commonutils.libraries = 'SalesforceCommonUtils'
      commonutils.frameworks = 'MessageUI'
      commonutils.libraries = 'z'
      commonutils.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/SalesforceCommonUtils/Headers" }

  end

end
