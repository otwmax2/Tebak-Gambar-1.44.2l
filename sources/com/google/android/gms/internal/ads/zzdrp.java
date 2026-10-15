package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import com.google.android.gms.common.wrappers.Wrappers;
import com.vungle.mediation.BuildConfig;
import java.io.ByteArrayOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdrp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f15485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ApplicationInfo f15486b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f15489e = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f15487c = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10365s8)).intValue();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f15488d = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10376t8)).intValue();

    public zzdrp(Context context) {
        this.f15485a = context;
        this.f15486b = context.getApplicationInfo();
    }

    public final JSONObject a() throws JSONException {
        Drawable drawable;
        String strEncodeToString;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", Wrappers.a(this.f15485a).d(this.f15486b.packageName));
        } catch (PackageManager.NameNotFoundException unused) {
        }
        jSONObject.put("packageName", this.f15486b.packageName);
        com.google.android.gms.ads.internal.zzt.r();
        jSONObject.put("adMobAppId", com.google.android.gms.ads.internal.util.zzs.M(this.f15485a));
        if (this.f15489e.isEmpty()) {
            try {
                drawable = Wrappers.a(this.f15485a).e(this.f15486b.packageName).f2382b;
            } catch (PackageManager.NameNotFoundException unused2) {
                drawable = null;
            }
            if (drawable == null) {
                strEncodeToString = BuildConfig.FLAVOR;
            } else {
                drawable.setBounds(0, 0, this.f15487c, this.f15488d);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.f15487c, this.f15488d, Bitmap.Config.ARGB_8888);
                drawable.draw(new Canvas(bitmapCreateBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            this.f15489e = strEncodeToString;
        }
        if (!this.f15489e.isEmpty()) {
            jSONObject.put("icon", this.f15489e);
            jSONObject.put("iconWidthPx", this.f15487c);
            jSONObject.put("iconHeightPx", this.f15488d);
        }
        return jSONObject;
    }
}
