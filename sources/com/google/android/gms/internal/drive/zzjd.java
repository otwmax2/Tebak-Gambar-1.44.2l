package com.google.android.gms.internal.drive;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
final class zzjd extends zzjf {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f22082o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f22083p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final /* synthetic */ zzjc f22084q;

    zzjd(zzjc zzjcVar) {
        this.f22084q = zzjcVar;
        this.f22083p = zzjcVar.size();
    }

    @Override // com.google.android.gms.internal.drive.zzjj
    public final byte c() {
        int i10 = this.f22082o;
        if (i10 >= this.f22083p) {
            throw new NoSuchElementException();
        }
        this.f22082o = i10 + 1;
        return this.f22084q.s(i10);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f22082o < this.f22083p;
    }
}
