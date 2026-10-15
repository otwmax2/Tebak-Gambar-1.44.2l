package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzafh extends zzafj {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f8776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f8777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f8778d;

    public zzafh(int i10, long j10) {
        super(i10);
        this.f8776b = j10;
        this.f8777c = new ArrayList();
        this.f8778d = new ArrayList();
    }

    public final zzafh c(int i10) {
        int size = this.f8778d.size();
        for (int i11 = 0; i11 < size; i11++) {
            zzafh zzafhVar = (zzafh) this.f8778d.get(i11);
            if (zzafhVar.f8780a == i10) {
                return zzafhVar;
            }
        }
        return null;
    }

    public final zzafi d(int i10) {
        int size = this.f8777c.size();
        for (int i11 = 0; i11 < size; i11++) {
            zzafi zzafiVar = (zzafi) this.f8777c.get(i11);
            if (zzafiVar.f8780a == i10) {
                return zzafiVar;
            }
        }
        return null;
    }

    public final void e(zzafh zzafhVar) {
        this.f8778d.add(zzafhVar);
    }

    public final void f(zzafi zzafiVar) {
        this.f8777c.add(zzafiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String toString() {
        return zzafj.b(this.f8780a) + " leaves: " + Arrays.toString(this.f8777c.toArray()) + " containers: " + Arrays.toString(this.f8778d.toArray());
    }
}
