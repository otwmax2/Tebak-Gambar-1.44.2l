package com.google.android.gms.internal.auth;

import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Uri f21394a = Uri.parse("content://com.google.android.gsf.gservices");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Uri f21395b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f21396c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f21397d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicBoolean f21398e = new AtomicBoolean();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final HashMap<String, Boolean> f21399f = new HashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final HashMap<String, Integer> f21400g = new HashMap<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final HashMap<String, Long> f21401h = new HashMap<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final HashMap<String, Float> f21402i = new HashMap<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final String[] f21403j = new String[0];
}
