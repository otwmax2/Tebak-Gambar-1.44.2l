package com.google.android.gms.internal.firebase_auth;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbk<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object[] f22438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f22439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f22440c;

    public zzbk() {
        this(4);
    }

    public final zzbk<K, V> a(K k10, V v10) {
        int i10 = (this.f22439b + 1) << 1;
        Object[] objArr = this.f22438a;
        if (i10 > objArr.length) {
            int length = objArr.length;
            if (i10 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = length + (length >> 1) + 1;
            if (iHighestOneBit < i10) {
                iHighestOneBit = Integer.highestOneBit(i10 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                iHighestOneBit = Integer.MAX_VALUE;
            }
            this.f22438a = Arrays.copyOf(objArr, iHighestOneBit);
            this.f22440c = false;
        }
        zzbf.a(k10, v10);
        Object[] objArr2 = this.f22438a;
        int i11 = this.f22439b;
        objArr2[i11 * 2] = k10;
        objArr2[(i11 * 2) + 1] = v10;
        this.f22439b = i11 + 1;
        return this;
    }

    public final zzbl<K, V> b() {
        this.f22440c = true;
        return zzbp.e(this.f22439b, this.f22438a);
    }

    private zzbk(int i10) {
        this.f22438a = new Object[8];
        this.f22439b = 0;
        this.f22440c = false;
    }
}
