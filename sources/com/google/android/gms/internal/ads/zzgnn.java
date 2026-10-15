package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgnn {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzgnn f19317b = new zzgnn(new zzgno());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzgnn f19318c = new zzgnn(new zzgns());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzgnn f19319d = new zzgnn(new zzgnu());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzgnn f19320e = new zzgnn(new zzgnt());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzgnn f19321f = new zzgnn(new zzgnp());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final zzgnn f19322g = new zzgnn(new zzgnr());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzgnn f19323h = new zzgnn(new zzgnq());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgnm f19324a;

    public zzgnn(zzgnv zzgnvVar) {
        if (zzgat.b()) {
            this.f19324a = new zzgnl(zzgnvVar, null);
        } else if (zzgof.a()) {
            this.f19324a = new zzgnh(zzgnvVar, null);
        } else {
            this.f19324a = new zzgnj(zzgnvVar, null);
        }
    }

    public static List b(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            }
        }
        return arrayList;
    }

    public final Object a(String str) throws GeneralSecurityException {
        return this.f19324a.o(str);
    }
}
