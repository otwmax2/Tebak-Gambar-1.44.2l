package com.google.android.gms.common.server.response;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Stack;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@KeepForSdk
public class FastParser<T extends FastJsonResponse> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final char[] f7580g = {'u', 'l', 'l'};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final char[] f7581h = {'r', 'u', 'e'};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final char[] f7582i = {'r', 'u', 'e', '\"'};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final char[] f7583j = {'a', 'l', 's', 'e'};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final char[] f7584k = {'a', 'l', 's', 'e', '\"'};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final char[] f7585l = {'\n'};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final i<Integer> f7586m = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final i<Long> f7587n = new b();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final i<Float> f7588o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final i<Double> f7589p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final i<Boolean> f7590q = new e();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final i<String> f7591r = new f();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final i<BigInteger> f7592s = new g();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final i<BigDecimal> f7593t = new h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final char[] f7594a = new char[1];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final char[] f7595b = new char[32];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final char[] f7596c = new char[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final StringBuilder f7597d = new StringBuilder(32);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final StringBuilder f7598e = new StringBuilder(1024);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Stack<Integer> f7599f = new Stack<>();

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @ShowFirstParty
    @KeepForSdk
    public static class ParseException extends Exception {
    }
}
