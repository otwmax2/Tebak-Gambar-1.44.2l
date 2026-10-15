package com.google.android.gms.common.data;

import android.net.Uri;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class DataBufferRef {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @KeepForSdk
    protected final DataHolder f7310o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @KeepForSdk
    protected int f7311p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f7312q;

    @KeepForSdk
    public DataBufferRef(DataHolder dataHolder, int i10) {
        this.f7310o = (DataHolder) Preconditions.k(dataHolder);
        B(i10);
    }

    @KeepForSdk
    protected Uri A(String str) {
        String strB4 = this.f7310o.b4(str, this.f7311p, this.f7312q);
        if (strB4 == null) {
            return null;
        }
        return Uri.parse(strB4);
    }

    protected final void B(int i10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.f7310o.getCount()) {
            z10 = true;
        }
        Preconditions.n(z10);
        this.f7311p = i10;
        this.f7312q = this.f7310o.c4(i10);
    }

    @KeepForSdk
    public boolean equals(Object obj) {
        if (obj instanceof DataBufferRef) {
            DataBufferRef dataBufferRef = (DataBufferRef) obj;
            if (Objects.b(Integer.valueOf(dataBufferRef.f7311p), Integer.valueOf(this.f7311p)) && Objects.b(Integer.valueOf(dataBufferRef.f7312q), Integer.valueOf(this.f7312q)) && dataBufferRef.f7310o == this.f7310o) {
                return true;
            }
        }
        return false;
    }

    @KeepForSdk
    protected boolean h(String str) {
        return this.f7310o.V3(str, this.f7311p, this.f7312q);
    }

    @KeepForSdk
    public int hashCode() {
        return Objects.c(Integer.valueOf(this.f7311p), Integer.valueOf(this.f7312q), this.f7310o);
    }

    @KeepForSdk
    protected float t(String str) {
        return this.f7310o.f4(str, this.f7311p, this.f7312q);
    }

    @KeepForSdk
    protected int v(String str) {
        return this.f7310o.X3(str, this.f7311p, this.f7312q);
    }

    @KeepForSdk
    protected long w(String str) {
        return this.f7310o.Y3(str, this.f7311p, this.f7312q);
    }

    @KeepForSdk
    protected String x(String str) {
        return this.f7310o.b4(str, this.f7311p, this.f7312q);
    }

    @KeepForSdk
    public boolean y(String str) {
        return this.f7310o.d4(str);
    }

    @KeepForSdk
    protected boolean z(String str) {
        return this.f7310o.e4(str, this.f7311p, this.f7312q);
    }
}
