package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.browser.customtabs.c;
import androidx.browser.customtabs.e;
import androidx.browser.customtabs.f;
import com.facebook.internal.NativeProtocol;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbbs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f10477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f10478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f10479c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzbbq f10480d;

    public static boolean g(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        if (listQueryIntentActivities != null && resolveInfoResolveActivity != null) {
            for (int i10 = 0; i10 < listQueryIntentActivities.size(); i10++) {
                if (resolveInfoResolveActivity.activityInfo.name.equals(listQueryIntentActivities.get(i10).activityInfo.name)) {
                    return resolveInfoResolveActivity.activityInfo.packageName.equals(zzgxm.a(context));
                }
            }
        }
        return false;
    }

    public final f a() {
        c cVar = this.f10478b;
        if (cVar == null) {
            this.f10477a = null;
        } else if (this.f10477a == null) {
            this.f10477a = cVar.d(null);
        }
        return this.f10477a;
    }

    public final void b(Activity activity) {
        String strA;
        if (this.f10478b == null && (strA = zzgxm.a(activity)) != null) {
            zzgxn zzgxnVar = new zzgxn(this, null);
            this.f10479c = zzgxnVar;
            c.a(activity, strA, zzgxnVar);
        }
    }

    public final void c(c cVar) {
        this.f10478b = cVar;
        cVar.f(0L);
        zzbbq zzbbqVar = this.f10480d;
        if (zzbbqVar != null) {
            zzbbqVar.zza();
        }
    }

    public final void d() {
        this.f10478b = null;
        this.f10477a = null;
    }

    public final void e(zzbbq zzbbqVar) {
        this.f10480d = zzbbqVar;
    }

    public final void f(Activity activity) {
        e eVar = this.f10479c;
        if (eVar == null) {
            return;
        }
        activity.unbindService(eVar);
        this.f10478b = null;
        this.f10477a = null;
        this.f10479c = null;
    }
}
