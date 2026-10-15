package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzalf {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static final Comparator f9481d = new zzale();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f9482a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f9483b = new ArrayList(64);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9484c = 0;

    public zzalf(int i10) {
    }

    private final synchronized void c() {
        while (this.f9484c > 4096) {
            byte[] bArr = (byte[]) this.f9482a.remove(0);
            this.f9483b.remove(bArr);
            this.f9484c -= bArr.length;
        }
    }

    public final synchronized void a(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            if (length <= 4096) {
                this.f9482a.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.f9483b, bArr, f9481d);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.f9483b.add(iBinarySearch, bArr);
                this.f9484c += length;
                c();
            }
        }
    }

    public final synchronized byte[] b(int i10) {
        for (int i11 = 0; i11 < this.f9483b.size(); i11++) {
            byte[] bArr = (byte[]) this.f9483b.get(i11);
            int length = bArr.length;
            if (length >= i10) {
                this.f9484c -= length;
                this.f9483b.remove(i11);
                this.f9482a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i10];
    }
}
