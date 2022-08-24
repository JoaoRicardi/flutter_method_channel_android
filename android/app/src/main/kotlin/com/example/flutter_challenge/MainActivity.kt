package com.example.flutter_challenge

import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
}



class ConnectionChannelHandler: MethodChannel.MethodCallHandler, EventChannel.StreamHandler{

    private val getConnectionStatus = "connection"

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when(call.method){
            getConnectionStatus -> getConnectionStatusImp()
            else -> handleMethodNotImplemented(call, result)
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        TODO("Not yet implemented")
    }

    override fun onCancel(arguments: Any?) {
        TODO("Not yet implemented")
    }


    private fun getConnectionStatusImp(){

    }

    private fun handleMethodNotImplemented(call: MethodCall, result: MethodChannel.Result) {
        Log.d("Method not implemented ${call.method}", "Error method not implemented")
        result.error(
                "Method not implemented ${call.method}",
                "Please implement method",
                {}
        )
    }

}