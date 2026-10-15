package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzyz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f21152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f21153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f21154c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f21155d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f21156e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f21157f;

    private zzyz(List list, int i10, int i11, int i12, float f10, String str) {
        this.f21152a = list;
        this.f21153b = i10;
        this.f21154c = i11;
        this.f21155d = i12;
        this.f21156e = f10;
        this.f21157f = str;
    }

    public static zzyz a(zzen zzenVar) throws zzbu {
        String strA;
        int i10;
        int i11;
        float f10;
        try {
            zzenVar.g(4);
            int iS = (zzenVar.s() & 3) + 1;
            if (iS == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iS2 = zzenVar.s() & 31;
            for (int i12 = 0; i12 < iS2; i12++) {
                arrayList.add(b(zzenVar));
            }
            int iS3 = zzenVar.s();
            for (int i13 = 0; i13 < iS3; i13++) {
                arrayList.add(b(zzenVar));
            }
            if (iS2 > 0) {
                zzaaq zzaaqVarD = zzaar.d((byte[]) arrayList.get(0), iS + 1, ((byte[]) arrayList.get(0)).length);
                int i14 = zzaaqVarD.f8337e;
                int i15 = zzaaqVarD.f8338f;
                float f11 = zzaaqVarD.f8339g;
                strA = zzdn.a(zzaaqVarD.f8333a, zzaaqVarD.f8334b, zzaaqVarD.f8335c);
                i10 = i14;
                i11 = i15;
                f10 = f11;
            } else {
                strA = null;
                i10 = -1;
                i11 = -1;
                f10 = 1.0f;
            }
            return new zzyz(arrayList, iS, i10, i11, f10, strA);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw zzbu.a("Error parsing AVC config", e10);
        }
    }

    private static byte[] b(zzen zzenVar) {
        int iW = zzenVar.w();
        int iK = zzenVar.k();
        zzenVar.g(iW);
        return zzdn.c(zzenVar.h(), iK, iW);
    }
}
