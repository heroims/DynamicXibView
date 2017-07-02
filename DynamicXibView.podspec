Pod::Spec.new do |s|
s.name                  = 'DynamicXibView'
s.version               = '1.0'
s.summary               = 'Xib in StoryBoard dynamic visualization '
s.homepage              = 'https://github.com/heroims/DynamicXibView'
s.license               = { :type => 'MIT', :file => 'README.md' }
s.author                = { 'heroims' => 'heroims@163.com' }
s.source                = { :git => 'https://github.com/heroims/DynamicXibView.git', :tag => "#{s.version}" }
s.platform              = :ios, '7.0'
s.source_files          = 'DynamicXibView.swift'
s.requires_arc          = true
end
