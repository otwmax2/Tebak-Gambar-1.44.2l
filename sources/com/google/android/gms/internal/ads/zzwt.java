package com.google.android.gms.internal.ads;

import com.facebook.internal.NativeProtocol;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzwt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f20965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f20966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f20967c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzwm[] f20968d = new zzwm[100];

    public zzwt(boolean z10, int i10) {
    }

    public final synchronized int a() {
        return this.f20966b * NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
    }

    public final synchronized zzwm b() {
        zzwm zzwmVar;
        this.f20966b++;
        int i10 = this.f20967c;
        if (i10 > 0) {
            zzwm[] zzwmVarArr = this.f20968d;
            int i11 = i10 - 1;
            this.f20967c = i11;
            zzwmVar = zzwmVarArr[i11];
            Objects.requireNonNull(zzwmVar);
            zzwmVarArr[i11] = null;
        } else {
            zzwmVar = new zzwm(new byte[NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST], 0);
            int i12 = this.f20966b;
            zzwm[] zzwmVarArr2 = this.f20968d;
            int length = zzwmVarArr2.length;
            if (i12 > length) {
                this.f20968d = (zzwm[]) Arrays.copyOf(zzwmVarArr2, length + length);
                return zzwmVar;
            }
        }
        return zzwmVar;
    }

    public final synchronized void c(zzwm zzwmVar) {
        zzwm[] zzwmVarArr = this.f20968d;
        int i10 = this.f20967c;
        this.f20967c = i10 + 1;
        zzwmVarArr[i10] = zzwmVar;
        this.f20966b--;
        notifyAll();
    }

    public final synchronized void d(zzwn zzwnVar) {
        while (zzwnVar != null) {
            zzwm[] zzwmVarArr = this.f20968d;
            int i10 = this.f20967c;
            this.f20967c = i10 + 1;
            zzwmVarArr[i10] = zzwnVar.a();
            this.f20966b--;
            zzwnVar = zzwnVar.d();
        }
        notifyAll();
    }

    public final synchronized void e() {
        f(0);
    }

    public final synchronized void f(int i10) {
        int i11 = this.f20965a;
        this.f20965a = i10;
        if (i10 < i11) {
            g();
        }
    }

    public final synchronized void g() {
        int iMax = Math.max(0, zzew.P(this.f20965a, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST) - this.f20966b);
        int i10 = this.f20967c;
        if (iMax >= i10) {
            return;
        }
        Arrays.fill(this.f20968d, iMax, i10, (Object) null);
        this.f20967c = iMax;
    }
}
