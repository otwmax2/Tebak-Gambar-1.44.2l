package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.facebook.internal.NativeProtocol;
import java.io.ByteArrayOutputStream;
import java.util.Locale;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbm implements zzg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Application f21741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbi f21742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f21743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f21744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzh f21745e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzak f21746f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzay f21747g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzam f21748h;

    private final void e(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("url");
        if (TextUtils.isEmpty(strOptString)) {
            Log.d("UserMessagingPlatform", "Action[browser]: empty url.");
        }
        Uri uri = Uri.parse(strOptString);
        if (uri.getScheme() == null) {
            String strValueOf = String.valueOf(strOptString);
            Log.d("UserMessagingPlatform", strValueOf.length() != 0 ? "Action[browser]: empty scheme: ".concat(strValueOf) : new String("Action[browser]: empty scheme: "));
        }
        try {
            this.f21742b.startActivity(new Intent("android.intent.action.VIEW", uri));
        } catch (ActivityNotFoundException e10) {
            String strValueOf2 = String.valueOf(strOptString);
            Log.d("UserMessagingPlatform", strValueOf2.length() != 0 ? "Action[browser]: can not open url: ".concat(strValueOf2) : new String("Action[browser]: can not open url: "), e10);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    @Override // com.google.android.gms.internal.consent_sdk.zzg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(java.lang.String r7, org.json.JSONObject r8) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.consent_sdk.zzbm.a(java.lang.String, org.json.JSONObject):boolean");
    }

    public final /* synthetic */ void b() {
        String strConcat;
        Application application = this.f21741a;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING, application.getPackageManager().getApplicationLabel(application.getApplicationInfo()).toString());
            Drawable applicationIcon = application.getPackageManager().getApplicationIcon(application.getApplicationInfo());
            if (applicationIcon == null) {
                strConcat = null;
            } else {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                applicationIcon.draw(canvas);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                String strValueOf = String.valueOf(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2));
                strConcat = strValueOf.length() != 0 ? "data:image/png;base64,".concat(strValueOf) : new String("data:image/png;base64,");
            }
            jSONObject.put("app_icon", strConcat);
            jSONObject.put("stored_infos_map", this.f21748h.a());
        } catch (JSONException unused) {
        }
        this.f21747g.a().b("UMP_configureFormWithAppAssets", jSONObject.toString());
    }

    final void c(String str) {
        String strValueOf = String.valueOf(str);
        Log.d("UserMessagingPlatform", strValueOf.length() != 0 ? "Receive consent action: ".concat(strValueOf) : new String("Receive consent action: "));
        Uri uri = Uri.parse(str);
        this.f21745e.a(uri.getQueryParameter("action"), uri.getQueryParameter("args"), this, this.f21746f);
    }

    final void d(int i10, String str, String str2) {
        this.f21747g.e(new zzj(2, String.format(Locale.US, "WebResourceError(%d, %s): %s", Integer.valueOf(i10), str2, str)));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzg
    public final Executor zza() {
        final Handler handler = this.f21743c;
        return new Executor() { // from class: com.google.android.gms.internal.consent_sdk.zzbl
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }
}
