package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcnc implements zzbly {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f13548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzatb f13549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PowerManager f13550c;

    public zzcnc(Context context, zzatb zzatbVar) {
        this.f13548a = context;
        this.f13549b = zzatbVar;
        this.f13550c = (PowerManager) context.getSystemService("power");
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final JSONObject c(zzcnf zzcnfVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzate zzateVar = zzcnfVar.f13560f;
        if (zzateVar == null) {
            jSONObject = new JSONObject();
        } else {
            if (this.f13549b.d() == null) {
                throw new JSONException("Active view Info cannot be null.");
            }
            boolean z10 = zzateVar.f9877a;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("afmaVersion", this.f13549b.b()).put("activeViewJSON", this.f13549b.d()).put("timestamp", zzcnfVar.f13558d).put("adFormat", this.f13549b.a()).put("hashCode", this.f13549b.c()).put("isMraid", false).put("isStopped", false).put("isPaused", zzcnfVar.f13556b).put("isNative", this.f13549b.e()).put("isScreenOn", Build.VERSION.SDK_INT >= 20 ? this.f13550c.isInteractive() : this.f13550c.isScreenOn()).put("appMuted", com.google.android.gms.ads.internal.zzt.t().e()).put("appVolume", com.google.android.gms.ads.internal.zzt.t().a()).put("deviceVolume", com.google.android.gms.ads.internal.util.zzab.b(this.f13548a.getApplicationContext()));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10285l5)).booleanValue()) {
                AudioManager audioManager = (AudioManager) this.f13548a.getApplicationContext().getSystemService("audio");
                Integer numValueOf = audioManager == null ? null : Integer.valueOf(audioManager.getMode());
                if (numValueOf != null) {
                    jSONObject3.put("audioMode", numValueOf);
                }
            }
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.f13548a.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", zzateVar.f9878b).put("isAttachedToWindow", z10).put("viewBox", new JSONObject().put(ViewHierarchyConstants.DIMENSION_TOP_KEY, zzateVar.f9879c.top).put("bottom", zzateVar.f9879c.bottom).put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, zzateVar.f9879c.left).put("right", zzateVar.f9879c.right)).put("adBox", new JSONObject().put(ViewHierarchyConstants.DIMENSION_TOP_KEY, zzateVar.f9880d.top).put("bottom", zzateVar.f9880d.bottom).put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, zzateVar.f9880d.left).put("right", zzateVar.f9880d.right)).put("globalVisibleBox", new JSONObject().put(ViewHierarchyConstants.DIMENSION_TOP_KEY, zzateVar.f9881e.top).put("bottom", zzateVar.f9881e.bottom).put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, zzateVar.f9881e.left).put("right", zzateVar.f9881e.right)).put("globalVisibleBoxVisible", zzateVar.f9882f).put("localVisibleBox", new JSONObject().put(ViewHierarchyConstants.DIMENSION_TOP_KEY, zzateVar.f9883g.top).put("bottom", zzateVar.f9883g.bottom).put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, zzateVar.f9883g.left).put("right", zzateVar.f9883g.right)).put("localVisibleBoxVisible", zzateVar.f9884h).put("hitBox", new JSONObject().put(ViewHierarchyConstants.DIMENSION_TOP_KEY, zzateVar.f9885i.top).put("bottom", zzateVar.f9885i.bottom).put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, zzateVar.f9885i.left).put("right", zzateVar.f9885i.right)).put("screenDensity", this.f13548a.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", zzcnfVar.f13555a);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10248i1)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = zzateVar.f9887k;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put(ViewHierarchyConstants.DIMENSION_TOP_KEY, rect2.top).put("bottom", rect2.bottom).put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, rect2.left).put("right", rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(zzcnfVar.f13559e)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
