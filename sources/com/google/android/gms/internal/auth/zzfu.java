package com.google.android.gms.internal.auth;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfu<T> implements zzgb<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfq f21532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgp<?, ?> f21533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzeh<?> f21534c;

    private zzfu(zzgp<?, ?> zzgpVar, zzeh<?> zzehVar, zzfq zzfqVar) {
        this.f21533b = zzgpVar;
        zzehVar.c(zzfqVar);
        this.f21534c = zzehVar;
        this.f21532a = zzfqVar;
    }

    static <T> zzfu<T> h(zzgp<?, ?> zzgpVar, zzeh<?> zzehVar, zzfq zzfqVar) {
        return new zzfu<>(zzgpVar, zzehVar, zzfqVar);
    }

    @Override // com.google.android.gms.internal.auth.zzgb
    public final int a(T t10) {
        return this.f21533b.a(t10).hashCode();
    }

    @Override // com.google.android.gms.internal.auth.zzgb
    public final void b(T t10) {
        this.f21533b.e(t10);
        this.f21534c.b(t10);
    }

    @Override // com.google.android.gms.internal.auth.zzgb
    public final boolean c(T t10) {
        this.f21534c.a(t10);
        throw null;
    }

    @Override // com.google.android.gms.internal.auth.zzgb
    public final T d() {
        return (T) ((zzeo) ((zzeq) this.f21532a).k(5, null, null)).e();
    }

    @Override // com.google.android.gms.internal.auth.zzgb
    public final void e(T t10, T t11) {
        zzgd.f(this.f21533b, t10, t11);
    }

    @Override // com.google.android.gms.internal.auth.zzgb
    public final boolean f(T t10, T t11) {
        return this.f21533b.a(t10).equals(this.f21533b.a(t11));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.auth.zzgb
    public final void g(T t10, byte[] bArr, int i10, int i11, zzdp zzdpVar) throws IOException {
        zzeq zzeqVar = (zzeq) t10;
        if (zzeqVar.zzc == zzgq.a()) {
            zzeqVar.zzc = zzgq.c();
        }
        throw null;
    }
}
