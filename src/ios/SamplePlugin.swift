import CordovaTestFramework

@objc class SamplePlugin : CDVPlugin {
	@objc(test:)
	func test(command: CDVInvokedUrlCommand) {
		let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK)
		print("SamplePlugin - test")
		self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
	}
	
	@objc(frameworkTest:)
	func frameworkTest(command: CDVInvokedUrlCommand) {
		let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK)
		cordovaFrameworkFunction()
		print("SamplePlugin - frameworkTest")
		self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
	}
	
	@objc(parameterTest:)
	func parameterTest(command: CDVInvokedUrlCommand) {
		let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK)
		let parameter = command.argument(at: 0) as! String
		print(parameter)
		print("SamplePlugin - parameterTest")
		self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
	}
	
	@objc(successTest:)
	func successTest(command: CDVInvokedUrlCommand) {
		let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: "Successfully Run")
		print("SamplePlugin - successTest")
		self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
	}
	
	@objc(failTest:)
	func failTest(command: CDVInvokedUrlCommand) {
		let pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR, messageAs: "Error Occurred")
		print("SamplePlugin - failTest")
		self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
	}
}
