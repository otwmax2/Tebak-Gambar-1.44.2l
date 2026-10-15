package com.google.android.gms.internal.ads;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzbqf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcei f11164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f11165b;

    public zzbqf(zzcei zzceiVar, String str) {
        this.f11164a = zzceiVar;
        this.f11165b = str;
    }

    public final void b(int i10, int i11, int i12, int i13) {
        try {
            this.f11164a.w("onDefaultPositionReceived", new JSONObject().put("x", i10).put("y", i11).put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, i12).put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, i13));
        } catch (JSONException e10) {
            zzbza.e("Error occurred while dispatching default position.", e10);
        }
    }

    public final void c(String str) {
        try {
            JSONObject jSONObjectPut = new JSONObject().put("message", str).put("action", this.f11165b);
            zzcei zzceiVar = this.f11164a;
            if (zzceiVar != null) {
                zzceiVar.w("onError", jSONObjectPut);
            }
        } catch (JSONException e10) {
            zzbza.e("Error occurred while dispatching error event.", e10);
        }
    }

    public final void d(String str) {
        try {
            this.f11164a.w("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e10) {
            zzbza.e("Error occurred while dispatching ready Event.", e10);
        }
    }

    public final void e(int i10, int i11, int i12, int i13, float f10, int i14) {
        try {
            this.f11164a.w("onScreenInfoChanged", new JSONObject().put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, i10).put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, i11).put("maxSizeWidth", i12).put("maxSizeHeight", i13).put("density", f10).put("rotation", i14));
        } catch (JSONException e10) {
            zzbza.e("Error occurred while obtaining screen information.", e10);
        }
    }

    public final void f(int i10, int i11, int i12, int i13) {
        try {
            this.f11164a.w("onSizeChanged", new JSONObject().put("x", i10).put("y", i11).put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, i12).put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, i13));
        } catch (JSONException e10) {
            zzbza.e("Error occurred while dispatching size change.", e10);
        }
    }

    public final void g(String str) {
        try {
            this.f11164a.w("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e10) {
            zzbza.e("Error occurred while dispatching state change.", e10);
        }
    }
}
