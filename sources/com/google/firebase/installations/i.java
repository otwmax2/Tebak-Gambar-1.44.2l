package com.google.firebase.installations;

import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f26370b = TimeUnit.HOURS.toSeconds(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f26371c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static i f26372d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p6.a f26373a;

    private i(p6.a aVar) {
        this.f26373a = aVar;
    }

    public static i c() {
        return d(p6.b.b());
    }

    public static i d(p6.a aVar) {
        if (f26372d == null) {
            f26372d = new i(aVar);
        }
        return f26372d;
    }

    static boolean g(String str) {
        return f26371c.matcher(str).matches();
    }

    static boolean h(String str) {
        return str.contains(CertificateUtil.DELIMITER);
    }

    public long a() {
        return this.f26373a.a();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public long e() {
        return (long) (Math.random() * 1000.0d);
    }

    public boolean f(n6.d dVar) {
        return TextUtils.isEmpty(dVar.b()) || dVar.h() + dVar.c() < b() + f26370b;
    }
}
