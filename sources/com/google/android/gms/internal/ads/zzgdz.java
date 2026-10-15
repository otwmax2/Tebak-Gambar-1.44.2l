package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgdz implements zzgeb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f19071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgoj f19072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgpe f19073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgkx f19074d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgme f19075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final Integer f19076f;

    private zzgdz(String str, zzgpe zzgpeVar, zzgkx zzgkxVar, zzgme zzgmeVar, @Nullable Integer num) {
        this.f19071a = str;
        this.f19072b = zzgek.b(str);
        this.f19073c = zzgpeVar;
        this.f19074d = zzgkxVar;
        this.f19075e = zzgmeVar;
        this.f19076f = num;
    }

    public static zzgdz a(String str, zzgpe zzgpeVar, zzgkx zzgkxVar, zzgme zzgmeVar, @Nullable Integer num) throws GeneralSecurityException {
        if (zzgmeVar == zzgme.RAW) {
            if (num != null) {
                throw new GeneralSecurityException("Keys with output prefix type raw should not have an id requirement.");
            }
        } else if (num == null) {
            throw new GeneralSecurityException("Keys with output prefix type different from raw should have an id requirement.");
        }
        return new zzgdz(str, zzgpeVar, zzgkxVar, zzgmeVar, num);
    }

    public final zzgkx b() {
        return this.f19074d;
    }

    public final zzgme c() {
        return this.f19075e;
    }

    @Override // com.google.android.gms.internal.ads.zzgeb
    public final zzgoj d() {
        return this.f19072b;
    }

    public final zzgpe e() {
        return this.f19073c;
    }

    @Nullable
    public final Integer f() {
        return this.f19076f;
    }

    public final String g() {
        return this.f19071a;
    }
}
