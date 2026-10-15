package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzxl {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Comparator f21010g = new Comparator() { // from class: com.google.android.gms.internal.ads.zzxh
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((zzxk) obj).f21007a - ((zzxk) obj2).f21007a;
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Comparator f21011h = new Comparator() { // from class: com.google.android.gms.internal.ads.zzxi
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return Float.compare(((zzxk) obj).f21009c, ((zzxk) obj2).f21009c);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f21015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f21016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f21017f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzxk[] f21013b = new zzxk[5];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f21012a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f21014c = -1;

    public zzxl(int i10) {
    }

    public final float a(float f10) {
        if (this.f21014c != 0) {
            Collections.sort(this.f21012a, f21011h);
            this.f21014c = 0;
        }
        float f11 = this.f21016e;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f21012a.size(); i11++) {
            float f12 = 0.5f * f11;
            zzxk zzxkVar = (zzxk) this.f21012a.get(i11);
            i10 += zzxkVar.f21008b;
            if (i10 >= f12) {
                return zzxkVar.f21009c;
            }
        }
        if (this.f21012a.isEmpty()) {
            return Float.NaN;
        }
        return ((zzxk) this.f21012a.get(r6.size() - 1)).f21009c;
    }

    public final void b(int i10, float f10) {
        zzxk zzxkVar;
        if (this.f21014c != 1) {
            Collections.sort(this.f21012a, f21010g);
            this.f21014c = 1;
        }
        int i11 = this.f21017f;
        if (i11 > 0) {
            zzxk[] zzxkVarArr = this.f21013b;
            int i12 = i11 - 1;
            this.f21017f = i12;
            zzxkVar = zzxkVarArr[i12];
        } else {
            zzxkVar = new zzxk(null);
        }
        int i13 = this.f21015d;
        this.f21015d = i13 + 1;
        zzxkVar.f21007a = i13;
        zzxkVar.f21008b = i10;
        zzxkVar.f21009c = f10;
        this.f21012a.add(zzxkVar);
        this.f21016e += i10;
        while (true) {
            int i14 = this.f21016e;
            if (i14 <= 2000) {
                return;
            }
            int i15 = i14 - 2000;
            zzxk zzxkVar2 = (zzxk) this.f21012a.get(0);
            int i16 = zzxkVar2.f21008b;
            if (i16 <= i15) {
                this.f21016e -= i16;
                this.f21012a.remove(0);
                int i17 = this.f21017f;
                if (i17 < 5) {
                    zzxk[] zzxkVarArr2 = this.f21013b;
                    this.f21017f = i17 + 1;
                    zzxkVarArr2[i17] = zzxkVar2;
                }
            } else {
                zzxkVar2.f21008b = i16 - i15;
                this.f21016e -= i15;
            }
        }
    }

    public final void c() {
        this.f21012a.clear();
        this.f21014c = -1;
        this.f21015d = 0;
        this.f21016e = 0;
    }
}
