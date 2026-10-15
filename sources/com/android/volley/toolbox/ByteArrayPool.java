package com.android.volley.toolbox;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ByteArrayPool {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final Comparator<byte[]> f5176e = new Comparator<byte[]>() { // from class: com.android.volley.toolbox.ByteArrayPool.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<byte[]> f5177a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<byte[]> f5178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5179c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f5180d;

    private synchronized void c() {
        while (this.f5179c > this.f5180d) {
            byte[] bArrRemove = this.f5177a.remove(0);
            this.f5178b.remove(bArrRemove);
            this.f5179c -= bArrRemove.length;
        }
    }

    public synchronized byte[] a(int i10) {
        for (int i11 = 0; i11 < this.f5178b.size(); i11++) {
            byte[] bArr = this.f5178b.get(i11);
            if (bArr.length >= i10) {
                this.f5179c -= bArr.length;
                this.f5178b.remove(i11);
                this.f5177a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i10];
    }

    public synchronized void b(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f5180d) {
                this.f5177a.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.f5178b, bArr, f5176e);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.f5178b.add(iBinarySearch, bArr);
                this.f5179c += bArr.length;
                c();
            }
        }
    }
}
