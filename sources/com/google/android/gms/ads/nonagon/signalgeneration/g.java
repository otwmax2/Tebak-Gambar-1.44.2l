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
import java.util.ArrayList;
import javax.annotation.Nonnull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class g implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzbrr f6366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f6367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzac f6368c;

    g(zzac zzacVar, zzbrr zzbrrVar, boolean z10) {
        this.f6368c = zzacVar;
        this.f6366a = zzbrrVar;
        this.f6367b = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        try {
            this.f6366a.s("Internal error: " + th.getMessage());
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(@Nonnull Object obj) {
        ArrayList<Uri> arrayList = (ArrayList) obj;
        try {
            this.f6366a.q3(arrayList);
            if (this.f6368c.C || this.f6367b) {
                for (Uri uri : arrayList) {
                    if (this.f6368c.ib(uri)) {
                        this.f6368c.B.c(zzac.qb(uri, this.f6368c.L, AppEventsConstants.EVENT_PARAM_VALUE_YES).toString(), null);
                    } else {
                        if (((Boolean) zzba.c().b(zzbar.Z6)).booleanValue()) {
                            this.f6368c.B.c(uri.toString(), null);
                        }
                    }
                }
            }
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }
}
