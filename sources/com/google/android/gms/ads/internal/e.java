package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import com.google.android.gms.internal.ads.zzapw;
import com.google.android.gms.internal.ads.zzbza;
import com.vungle.mediation.BuildConfig;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class e extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzs f5960a;

    /* synthetic */ e(zzs zzsVar, zzp zzpVar) {
        this.f5960a = zzsVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String doInBackground(Void... voidArr) {
        try {
            zzs zzsVar = this.f5960a;
            zzsVar.f6241v = (zzapw) zzsVar.f6236q.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            e = e10;
            zzbza.h(BuildConfig.FLAVOR, e);
        } catch (ExecutionException e11) {
            e = e11;
            zzbza.h(BuildConfig.FLAVOR, e);
        } catch (TimeoutException e12) {
            zzbza.h(BuildConfig.FLAVOR, e12);
        }
        return this.f5960a.n();
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        String str = (String) obj;
        zzs zzsVar = this.f5960a;
        if (zzsVar.f6239t == null || str == null) {
            return;
        }
        zzsVar.f6239t.loadUrl(str);
    }
}
