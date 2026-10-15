package com.google.android.play.core.assetpacks;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class d1 extends RuntimeException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final int f25838o;

    d1(String str) {
        super(str);
        this.f25838o = -1;
    }

    d1(String str, int i10) {
        super(str);
        this.f25838o = i10;
    }

    d1(String str, Exception exc) {
        super(str, exc);
        this.f25838o = -1;
    }

    d1(String str, Exception exc, int i10) {
        super(str, exc);
        this.f25838o = i10;
    }
}
