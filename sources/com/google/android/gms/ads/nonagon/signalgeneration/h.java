package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbrr;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzfuf;
import com.vungle.mediation.BuildConfig;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class h implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbrr f6369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f6370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzac f6371c;

    h(zzac zzacVar, zzbrr zzbrrVar, boolean z10) {
        this.f6371c = zzacVar;
        this.f6369a = zzbrrVar;
        this.f6370b = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        try {
            this.f6369a.s("Internal error: " + th.getMessage());
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(@Nonnull Object obj) {
        List<Uri> list = (List) obj;
        try {
            zzac.Ya(this.f6371c, list);
            this.f6369a.q3(list);
            if (this.f6371c.D || this.f6370b) {
                for (Uri uri : list) {
                    if (this.f6371c.hb(uri)) {
                        this.f6371c.B.c(zzac.qb(uri, this.f6371c.L, AppEventsConstants.EVENT_PARAM_VALUE_YES).toString(), null);
                    } else {
                        if (((Boolean) zzba.c().b(zzbar.Z6)).booleanValue()) {
                            this.f6371c.B.c(uri.toString(), null);
                        }
                    }
                }
            }
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }
}
