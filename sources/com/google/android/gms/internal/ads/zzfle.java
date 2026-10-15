package com.google.android.gms.internal.ads;

import android.os.IBinder;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfle extends zzfly {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IBinder f18383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f18385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f18386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f18387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f18388f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte f18389g;

    zzfle() {
    }

    @Override // com.google.android.gms.internal.ads.zzfly
    public final zzfly a(String str) {
        this.f18388f = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfly
    public final zzfly b(String str) {
        this.f18384b = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfly
    public final zzfly c(int i10) {
        this.f18389g = (byte) (this.f18389g | 8);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfly
    public final zzfly d(int i10) {
        this.f18385c = i10;
        this.f18389g = (byte) (this.f18389g | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfly
    public final zzfly e(float f10) {
        this.f18386d = f10;
        this.f18389g = (byte) (this.f18389g | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfly
    public final zzfly f(boolean z10) {
        this.f18389g = (byte) (this.f18389g | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfly
    public final zzfly g(IBinder iBinder) {
        Objects.requireNonNull(iBinder, "Null windowToken");
        this.f18383a = iBinder;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfly
    public final zzfly h(int i10) {
        this.f18387e = i10;
        this.f18389g = (byte) (this.f18389g | 16);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfly
    public final zzflz i() {
        IBinder iBinder;
        if (this.f18389g == 31 && (iBinder = this.f18383a) != null) {
            return new zzflg(iBinder, false, this.f18384b, this.f18385c, this.f18386d, 0, null, this.f18387e, this.f18388f, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f18383a == null) {
            sb.append(" windowToken");
        }
        if ((this.f18389g & 1) == 0) {
            sb.append(" stableSessionToken");
        }
        if ((this.f18389g & 2) == 0) {
            sb.append(" layoutGravity");
        }
        if ((this.f18389g & 4) == 0) {
            sb.append(" layoutVerticalMargin");
        }
        if ((this.f18389g & 8) == 0) {
            sb.append(" displayMode");
        }
        if ((this.f18389g & 16) == 0) {
            sb.append(" windowWidthPx");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
