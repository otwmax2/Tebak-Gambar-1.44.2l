package com.google.android.play.core.assetpacks;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AssetPackState {
    public static AssetPackState h(String str, int i10, int i11, long j10, long j11, double d10, int i12, String str2, String str3) {
        return new j0(str, i10, i11, j10, j11, (int) Math.rint(100.0d * d10), i12, str2, str3);
    }

    static AssetPackState i(Bundle bundle, String str, h1 h1Var, p2 p2Var, b0 b0Var) {
        int iP = b0Var.P(bundle.getInt(t4.b.a("status", str)), str);
        int i10 = bundle.getInt(t4.b.a("error_code", str));
        long j10 = bundle.getLong(t4.b.a("bytes_downloaded", str));
        long j11 = bundle.getLong(t4.b.a("total_bytes_to_download", str));
        double dA = h1Var.a(str);
        long j12 = bundle.getLong(t4.b.a("pack_version", str));
        long j13 = bundle.getLong(t4.b.a("pack_base_version", str));
        int i11 = 1;
        int i12 = 4;
        if (iP != 4) {
            i12 = iP;
        } else if (j13 != 0 && j13 != j12) {
            i11 = 2;
        }
        return h(str, i12, i10, j10, j11, dA, i11, bundle.getString(t4.b.a("pack_version_tag", str), String.valueOf(bundle.getInt("app_version_code"))), p2Var.a(str));
    }

    public abstract long a();

    public abstract int b();

    public abstract String c();

    public abstract int d();

    public abstract long e();

    public abstract int f();

    public abstract int g();

    public abstract String j();

    public abstract String k();
}
