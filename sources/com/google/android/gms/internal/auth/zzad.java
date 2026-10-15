package com.google.android.gms.internal.auth;

import android.accounts.Account;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzad extends zzah {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzae f21323o;

    zzad(zzae zzaeVar) {
        this.f21323o = zzaeVar;
    }

    @Override // com.google.android.gms.internal.auth.zzah, com.google.android.gms.auth.account.zzb
    public final void j9(Account account) {
        this.f21323o.k(new zzai(account != null ? Status.f6973u : zzal.f21332a, account));
    }
}
