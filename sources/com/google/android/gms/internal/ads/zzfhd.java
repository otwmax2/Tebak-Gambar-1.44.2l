package com.google.android.gms.internal.ads;

import android.os.AsyncTask;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfhd extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzfhe f18215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final zzfgv f18216b;

    public zzfhd(zzfgv zzfgvVar, byte[] bArr) {
        this.f18216b = zzfgvVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        zzfhe zzfheVar = this.f18215a;
        if (zzfheVar != null) {
            zzfheVar.a(this);
        }
    }

    public final void b(zzfhe zzfheVar) {
        this.f18215a = zzfheVar;
    }
}
