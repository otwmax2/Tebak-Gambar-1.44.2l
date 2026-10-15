package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.vungle.mediation.BuildConfig;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcpy extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f13735o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View f13736p;

    private zzcpy(Context context) {
        super(context);
        this.f13735o = context;
    }

    public static zzcpy a(Context context, View view, zzeyc zzeycVar) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzcpy zzcpyVar = new zzcpy(context);
        if (!zzeycVar.f17669v.isEmpty() && (resources = zzcpyVar.f13735o.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            float f10 = ((zzeyd) zzeycVar.f17669v.get(0)).f17674a;
            float f11 = displayMetrics.density;
            zzcpyVar.setLayoutParams(new FrameLayout.LayoutParams((int) (f10 * f11), (int) (r1.f17675b * f11)));
        }
        zzcpyVar.f13736p = view;
        zzcpyVar.addView(view);
        com.google.android.gms.ads.internal.zzt.z();
        zzcaa.b(zzcpyVar, zzcpyVar);
        com.google.android.gms.ads.internal.zzt.z();
        zzcaa.a(zzcpyVar, zzcpyVar);
        JSONObject jSONObject = zzeycVar.f17649i0;
        RelativeLayout relativeLayout = new RelativeLayout(zzcpyVar.f13735o);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("header");
        if (jSONObjectOptJSONObject != null) {
            zzcpyVar.c(jSONObjectOptJSONObject, relativeLayout, 10);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("footer");
        if (jSONObjectOptJSONObject2 != null) {
            zzcpyVar.c(jSONObjectOptJSONObject2, relativeLayout, 12);
        }
        zzcpyVar.addView(relativeLayout);
        return zzcpyVar;
    }

    private final int b(double d10) {
        com.google.android.gms.ads.internal.client.zzay.b();
        return zzbyt.D(this.f13735o, (int) d10);
    }

    private final void c(JSONObject jSONObject, RelativeLayout relativeLayout, int i10) {
        TextView textView = new TextView(this.f13735o);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", BuildConfig.FLAVOR));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int iB = b(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, iB, 0, iB);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, b(jSONObject.optDouble(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, 15.0d)));
        layoutParams.addRule(i10);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        getLocationInWindow(new int[2]);
        this.f13736p.setY(-r0[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        getLocationInWindow(new int[2]);
        this.f13736p.setY(-r0[1]);
    }
}
