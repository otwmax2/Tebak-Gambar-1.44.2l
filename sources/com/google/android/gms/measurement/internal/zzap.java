package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzap extends z0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f24442c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f24443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AccountManager f24444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Boolean f24445f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f24446g;

    zzap(zzgi zzgiVar) {
        super(zzgiVar);
    }

    @Override // com.google.android.gms.measurement.internal.z0
    protected final boolean e() {
        Calendar calendar = Calendar.getInstance();
        this.f24442c = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        this.f24443d = language.toLowerCase(locale2) + "-" + locale.getCountry().toLowerCase(locale2);
        return false;
    }

    final long j() {
        c();
        return this.f24446g;
    }

    public final long k() {
        f();
        return this.f24442c;
    }

    public final String l() {
        f();
        return this.f24443d;
    }

    final void m() {
        c();
        this.f24445f = null;
        this.f24446g = 0L;
    }

    final boolean n() {
        Account[] result;
        c();
        long jA = this.f24394a.x().a();
        if (jA - this.f24446g > 86400000) {
            this.f24445f = null;
        }
        Boolean bool = this.f24445f;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (androidx.core.content.a.a(this.f24394a.N0(), "android.permission.GET_ACCOUNTS") != 0) {
            this.f24394a.U().u().a("Permission error checking for dasher/unicorn accounts");
            this.f24446g = jA;
            this.f24445f = Boolean.FALSE;
            return false;
        }
        if (this.f24444e == null) {
            this.f24444e = AccountManager.get(this.f24394a.N0());
        }
        try {
            result = this.f24444e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
        } catch (AuthenticatorException | OperationCanceledException | IOException e10) {
            this.f24394a.U().o().b("Exception checking account types", e10);
        }
        if (result != null && result.length > 0) {
            this.f24445f = Boolean.TRUE;
            this.f24446g = jA;
            return true;
        }
        Account[] result2 = this.f24444e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
        if (result2 != null && result2.length > 0) {
            this.f24445f = Boolean.TRUE;
            this.f24446g = jA;
            return true;
        }
        this.f24446g = jA;
        this.f24445f = Boolean.FALSE;
        return false;
    }
}
