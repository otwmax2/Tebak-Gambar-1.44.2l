package com.google.android.gms.drive;

import android.os.Bundle;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.drive.zzaf;
import com.google.android.gms.internal.drive.zzaw;
import com.google.android.gms.internal.drive.zzbr;
import com.google.android.gms.internal.drive.zzcb;
import com.google.android.gms.internal.drive.zzeb;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class Drive {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Api.ClientKey<zzaw> f7699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzaw, Api.ApiOptions.NoOptions> f7700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzaw, zzb> f7701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzaw, zza> f7702d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Scope f7703e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Scope f7704f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ShowFirstParty
    private static final Scope f7705g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Scope f7706h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Deprecated
    public static final Api<Api.ApiOptions.NoOptions> f7707i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Api<zzb> f7708j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Api<zza> f7709k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Deprecated
    public static final DriveApi f7710l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ShowFirstParty
    @Deprecated
    private static final zzj f7711m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final zzl f7712n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Deprecated
    public static final DrivePreferencesApi f7713o;

    public static class zza implements Api.ApiOptions.HasGoogleSignInAccountOptions {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Bundle f7714o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final GoogleSignInAccount f7715p;

        @Override // com.google.android.gms.common.api.Api.ApiOptions.HasGoogleSignInAccountOptions
        public final GoogleSignInAccount R1() {
            return this.f7715p;
        }

        public final Bundle a() {
            return this.f7714o;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == zza.class) {
                zza zzaVar = (zza) obj;
                if (!Objects.b(this.f7715p, zzaVar.R1())) {
                    return false;
                }
                String string = this.f7714o.getString("method_trace_filename");
                String string2 = zzaVar.f7714o.getString("method_trace_filename");
                if (((string == null && string2 == null) || (string != null && string2 != null && string.equals(string2))) && this.f7714o.getBoolean("bypass_initial_sync") == zzaVar.f7714o.getBoolean("bypass_initial_sync") && this.f7714o.getInt("proxy_type") == zzaVar.f7714o.getInt("proxy_type")) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.c(this.f7715p, this.f7714o.getString("method_trace_filename", BuildConfig.FLAVOR), Integer.valueOf(this.f7714o.getInt("proxy_type")), Boolean.valueOf(this.f7714o.getBoolean("bypass_initial_sync")));
        }
    }

    public static class zzb implements Api.ApiOptions.Optional {
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.drive.zzj, com.google.android.gms.internal.drive.zzbr] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.drive.zzl, com.google.android.gms.internal.drive.zzeb] */
    static {
        Api.ClientKey<zzaw> clientKey = new Api.ClientKey<>();
        f7699a = clientKey;
        a aVar = new a();
        f7700b = aVar;
        b bVar = new b();
        f7701c = bVar;
        c cVar = new c();
        f7702d = cVar;
        f7703e = new Scope("https://www.googleapis.com/auth/drive.file");
        f7704f = new Scope("https://www.googleapis.com/auth/drive.appdata");
        f7705g = new Scope("https://www.googleapis.com/auth/drive");
        f7706h = new Scope("https://www.googleapis.com/auth/drive.apps");
        f7707i = new Api<>("Drive.API", aVar, clientKey);
        f7708j = new Api<>("Drive.INTERNAL_API", bVar, clientKey);
        f7709k = new Api<>("Drive.API_CONNECTIONLESS", cVar, clientKey);
        f7710l = new zzaf();
        f7711m = new zzbr();
        f7712n = new zzeb();
        f7713o = new zzcb();
    }

    private Drive() {
    }
}
