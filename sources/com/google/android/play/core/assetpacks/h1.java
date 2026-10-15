package com.google.android.play.core.assetpacks;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class h1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, Double> f25929a = new HashMap();

    h1() {
    }

    final synchronized double a(String str) {
        Double d10 = this.f25929a.get(str);
        if (d10 == null) {
            return 0.0d;
        }
        return d10.doubleValue();
    }

    final synchronized double b(String str, y1 y1Var) {
        double d10;
        double d11 = ((x0) y1Var).f26167h;
        Double.isNaN(d11);
        double d12 = d11 + 1.0d;
        double d13 = ((x0) y1Var).f26168i;
        Double.isNaN(d13);
        d10 = d12 / d13;
        this.f25929a.put(str, Double.valueOf(d10));
        return d10;
    }

    final synchronized void c(String str) {
        this.f25929a.put(str, Double.valueOf(0.0d));
    }
}
