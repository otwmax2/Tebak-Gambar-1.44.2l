package com.google.android.gms.internal.ads;

import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfwx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final Object f18801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final Object f18802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f18803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgme f18804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f18805e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f18806f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzfvx f18807g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f18808h;

    zzfwx(@Nullable Object obj, @Nullable Object obj2, byte[] bArr, int i10, zzgme zzgmeVar, int i11, String str, zzfvx zzfvxVar) {
        this.f18801a = obj;
        this.f18802b = obj2;
        this.f18803c = Arrays.copyOf(bArr, bArr.length);
        this.f18808h = i10;
        this.f18804d = zzgmeVar;
        this.f18805e = i11;
        this.f18806f = str;
        this.f18807g = zzfvxVar;
    }

    public final int a() {
        return this.f18805e;
    }

    public final zzfvx b() {
        return this.f18807g;
    }

    public final zzgme c() {
        return this.f18804d;
    }

    @Nullable
    public final Object d() {
        return this.f18801a;
    }

    @Nullable
    public final Object e() {
        return this.f18802b;
    }

    public final String f() {
        return this.f18806f;
    }

    @Nullable
    public final byte[] g() {
        byte[] bArr = this.f18803c;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    public final int h() {
        return this.f18808h;
    }
}
