package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.ads.impl.R;
import com.vungle.mediation.BuildConfig;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbpx extends zzbqf {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f11111c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f11112d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f11113e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f11114f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f11115g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f11116h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f11117i;

    public zzbpx(zzcei zzceiVar, Map map) {
        super(zzceiVar, "createCalendarEvent");
        this.f11111c = map;
        this.f11112d = zzceiVar.g();
        this.f11113e = l("description");
        this.f11116h = l("summary");
        this.f11114f = k("start_ticks");
        this.f11115g = k("end_ticks");
        this.f11117i = l("location");
    }

    private final long k(String str) {
        String str2 = (String) this.f11111c.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    private final String l(String str) {
        return TextUtils.isEmpty((CharSequence) this.f11111c.get(str)) ? BuildConfig.FLAVOR : (String) this.f11111c.get(str);
    }

    final Intent i() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.f11113e);
        data.putExtra("eventLocation", this.f11117i);
        data.putExtra("description", this.f11116h);
        long j10 = this.f11114f;
        if (j10 > -1) {
            data.putExtra("beginTime", j10);
        }
        long j11 = this.f11115g;
        if (j11 > -1) {
            data.putExtra(SDKConstants.PARAM_END_TIME, j11);
        }
        data.setFlags(268435456);
        return data;
    }

    public final void j() {
        if (this.f11112d == null) {
            c("Activity context is not available.");
            return;
        }
        com.google.android.gms.ads.internal.zzt.r();
        if (!new zzbab(this.f11112d).b()) {
            c("This feature is not available on the device.");
            return;
        }
        com.google.android.gms.ads.internal.zzt.r();
        AlertDialog.Builder builderG = com.google.android.gms.ads.internal.util.zzs.g(this.f11112d);
        Resources resourcesD = com.google.android.gms.ads.internal.zzt.q().d();
        builderG.setTitle(resourcesD != null ? resourcesD.getString(R.string.f5710o) : "Create calendar event");
        builderG.setMessage(resourcesD != null ? resourcesD.getString(R.string.f5711p) : "Allow Ad to create a calendar event?");
        builderG.setPositiveButton(resourcesD != null ? resourcesD.getString(R.string.f5708m) : "Accept", new zzbpv(this));
        builderG.setNegativeButton(resourcesD != null ? resourcesD.getString(R.string.f5709n) : "Decline", new zzbpw(this));
        builderG.create().show();
    }
}
