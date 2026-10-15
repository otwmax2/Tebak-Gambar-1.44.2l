package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhm implements zzhk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzcz<Double> f21615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzcz<Boolean> f21616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzcz<Long> f21617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzcz<Long> f21618d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzcz<Boolean> f21619e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzcz<zzhi> f21620f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final zzcz<Boolean> f21621g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzcz<Long> f21622h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final zzcz<Long> f21623i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzcz<Boolean> f21624j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final zzcz<Boolean> f21625k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final zzcz<Long> f21626l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final zzcz<Boolean> f21627m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final zzcz<Double> f21628n;

    static {
        zzcx zzcxVarA = new zzcx(zzcq.a("com.google.android.gms.auth_account")).a();
        f21615a = zzcxVarA.b("getTokenRefactor__account_data_service_sample_percentage", 0.0d);
        f21616b = zzcxVarA.d("getTokenRefactor__account_data_service_tokenAPI_usable", true);
        f21617c = zzcxVarA.c("getTokenRefactor__account_manager_timeout_seconds", 20L);
        f21618d = zzcxVarA.c("getTokenRefactor__android_id_shift", 0L);
        f21619e = zzcxVarA.d("getTokenRefactor__authenticator_logic_improved", false);
        try {
            f21620f = zzcxVarA.e("getTokenRefactor__blocked_packages", zzhi.m(new byte[]{10, 19, 99, 111, 109, 46, 97, 110, 100, 114, 111, 105, 100, 46, 118, 101, 110, 100, 105, 110, 103, 10, 32, 99, 111, 109, 46, 103, 111, 111, 103, 108, 101, 46, 97, 110, 100, 114, 111, 105, 100, 46, 97, 112, 112, 115, 46, 109, 101, 101, 116, 105, 110, 103, 115, 10, 33, 99, 111, 109, 46, 103, 111, 111, 103, 108, 101, 46, 97, 110, 100, 114, 111, 105, 100, 46, 97, 112, 112, 115, 46, 109, 101, 115, 115, 97, 103, 105, 110, 103}), zzhl.f21614a);
            f21621g = zzcxVarA.d("getTokenRefactor__chimera_get_token_evolved", true);
            f21622h = zzcxVarA.c("getTokenRefactor__clear_token_timeout_seconds", 20L);
            f21623i = zzcxVarA.c("getTokenRefactor__default_task_timeout_seconds", 20L);
            f21624j = zzcxVarA.d("getTokenRefactor__gaul_accounts_api_evolved", false);
            f21625k = zzcxVarA.d("getTokenRefactor__gaul_token_api_evolved", false);
            f21626l = zzcxVarA.c("getTokenRefactor__get_token_timeout_seconds", 120L);
            f21627m = zzcxVarA.d("getTokenRefactor__gms_account_authenticator_evolved", true);
            f21628n = zzcxVarA.b("getTokenRefactor__gms_account_authenticator_sample_percentage", 0.0d);
        } catch (zzew e10) {
            throw new AssertionError("Could not parse proto flag \"getTokenRefactor__blocked_packages\"", e10);
        }
    }
}
