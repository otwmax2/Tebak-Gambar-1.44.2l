package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdbf extends zzczy implements zzdbh {
    public zzdbf(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void D(final String str) {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzdbb
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzdbh) obj).D(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void O(final String str) {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzdbd
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzdbh) obj).O(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void b() {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzdba
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzdbh) obj).b();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void c() {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzdaz
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzdbh) obj).c();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void n(final String str, final String str2) {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzdbc
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzdbh) obj).n(str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void o(String str) {
        final String str2 = "MalformedJson";
        W0(new zzczx(str2) { // from class: com.google.android.gms.internal.ads.zzdbe

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ String f14319a = "MalformedJson";

            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzdbh) obj).o(this.f14319a);
            }
        });
    }
}
