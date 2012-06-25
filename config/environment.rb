# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
DoclibBroker::Application.initialize!

#DocLib Configs - for Liferay Portal Server (6.0.X)
DoclibBroker::Application.config.liferayserveruser = ENV['LIFERAY_SERVER_USER']
DoclibBroker::Application.config.liferayserverpass = ENV['LIFERAY_SERVER_USER_PASS']

DoclibBroker::Application.config.liferayserverprotocol = 'http://'
DoclibBroker::Application.config.liferayserverurl = '127.0.0.1:8090'
DoclibBroker::Application.config.liferayaxissecure = '/tunnel-web/secure/axis/'

DoclibBroker::Application.config.liferaywsdlgetversionservice = 'Version'
DoclibBroker::Application.config.liferaywsdlfolderservice = 'Portlet_DL_DLFolderService'
DoclibBroker::Application.config.liferaywsdlfileentryservice = 'Portlet_DL_DLFileEntryService'
DoclibBroker::Application.config.liferaywsdlpermissionsservice = "Portal_ResourcePermissionService"
