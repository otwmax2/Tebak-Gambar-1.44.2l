package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.work.a;
import androidx.work.b;
import com.facebook.share.internal.ShareConstants;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbza;
import i1.b;
import i1.l;
import i1.t;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class WorkManagerUtil extends zzbq {
    @UsedByReflection("This class must be instantiated reflectively so that the default class loader can be used.")
    public WorkManagerUtil() {
    }

    private static void Sa(Context context) {
        try {
            t.f(context.getApplicationContext(), new a.b().a());
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbr
    public final void zze(IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        Sa(context);
        try {
            t tVarE = t.e(context);
            tVarE.a("offline_ping_sender_work");
            tVarE.b(new l.a(OfflinePingSender.class).e(new b.a().b(i1.k.CONNECTED).a()).a("offline_ping_sender_work").b());
        } catch (IllegalStateException e10) {
            zzbza.h("Failed to instantiate WorkManager.", e10);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbr
    public final boolean zzf(IObjectWrapper iObjectWrapper, String str, String str2) throws Throwable {
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        Sa(context);
        i1.b bVarA = new b.a().b(i1.k.CONNECTED).a();
        try {
            t.e(context).b(new l.a(OfflineNotificationPoster.class).e(bVarA).g(new b.a().e(ShareConstants.MEDIA_URI, str).e("gws_query_id", str2).a()).a("offline_notification_work").b());
            return true;
        } catch (IllegalStateException e10) {
            zzbza.h("Failed to instantiate WorkManager.", e10);
            return false;
        }
    }
}
