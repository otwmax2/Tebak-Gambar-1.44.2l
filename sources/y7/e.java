package y7;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static e f37028a = new e();

    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ WebView f37029o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ String f37030p;

        a(WebView webView, String str) {
            this.f37029o = webView;
            this.f37030p = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f37029o.loadUrl(this.f37030p);
        }
    }

    private e() {
    }

    public static final e a() {
        return f37028a;
    }

    public void b(WebView webView) {
        f(webView, "finishSession", new Object[0]);
    }

    public void c(WebView webView, float f10) {
        f(webView, "setDeviceVolume", Float.valueOf(f10));
    }

    public void d(WebView webView, String str, String str2) {
        if (str == null || TextUtils.isEmpty(str2)) {
            return;
        }
        j(webView, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};this.omidVerificationProperties.injectionId = '%INJECTION_ID%';var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", str).replace("%INJECTION_ID%", str2));
    }

    public void e(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        f(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    void f(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            a8.c.a("The WebView is null for " + str);
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        i(sb, objArr);
        sb.append(")}");
        g(webView, sb);
    }

    void g(WebView webView, StringBuilder sb) {
        String string = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            webView.loadUrl(string);
        } else {
            handler.post(new a(webView, string));
        }
    }

    public void h(WebView webView, JSONObject jSONObject) {
        f(webView, "init", jSONObject);
    }

    void i(StringBuilder sb, Object[] objArr) {
        if (objArr == null || objArr.length <= 0) {
            return;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                sb.append('\"');
            } else {
                if (obj instanceof String) {
                    String string = obj.toString();
                    if (string.startsWith("{")) {
                        sb.append(string);
                    } else {
                        sb.append('\"');
                        sb.append(string);
                    }
                } else {
                    sb.append(obj);
                }
                sb.append(",");
            }
            sb.append('\"');
            sb.append(",");
        }
        sb.setLength(sb.length() - 1);
    }

    public boolean j(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        webView.loadUrl("javascript: " + str);
        return true;
    }

    public void k(WebView webView, String str) {
        f(webView, "setNativeViewHierarchy", str);
    }

    public void l(WebView webView, String str) {
        f(webView, "setState", str);
    }
}
