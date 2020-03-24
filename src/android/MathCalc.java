package cordova.plugin.mathcalc;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * This class echoes a string called from JavaScript.
 */
public class MathCalc extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("coolMethod")) {
            String message = args.getString(0);
            this.coolMethod(message, callbackContext);
            return true;
        }
        if (action.equals("add")) {
            this.add(args, callbackContext);
            return true;
        }
        if (action.equals("subtract")) {
            this.subtract(args, callbackContext);
            return true;
        }
        return false;
    }

    private void sayHello(String message, CallbackContext callbackContext) {
        if (message != null && message.length() > 0) {
            callbackContext.success("Hello " + message);
        } else {
            callbackContext.error("Expected one non-empty string argument.");
        }
    }

    private void operation(JSONArray args, String type) {
        if (args != null && args.length() > 0) {
            try {
                int p1 = Integer.parseInt(args.getJSONObject(0).getString("param1"));
                int p2 = Integer.parseInt(args.getJSONObject(0).getString("param2"));

                if (type === "+") {
                    int result = p1 + p2;
                }
                if (type === "-") {
                    int result = p1 - p2;
                }
                if (type === "*") {
                    int result = p1 * p2;
                }
                callbackContext.success("" + result);
            } catch(Exception ex) {
                callbackContext.error("Something when wrong " + ex);
            }
        } else {
            callbackContext.error("Please don't pass null value.");
        }
    }

    private void add(JSONArray args, CallbackContext callbackContext) {
        this.operation(args, "+");
    }

    private void subtract(JSONArray args, CallbackContext callbackContext) {
        this.operation(args, "-");
    }

    private void multiply(JSONArray args, CallbackContext callbackContext) {
        this.operation(args, "*");
    }
}
