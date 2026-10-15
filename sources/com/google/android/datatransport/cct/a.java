package com.google.android.datatransport.cct;

import com.vungle.mediation.BuildConfig;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import l3.g;

/* JADX INFO: compiled from: CCTDestination.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f5535c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f5536d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f5537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set<j3.b> f5538f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f5539g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f5540h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5542b;

    static {
        String strA = e.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f5535c = strA;
        String strA2 = e.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f5536d = strA2;
        String strA3 = e.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f5537e = strA3;
        f5538f = Collections.unmodifiableSet(new HashSet(Arrays.asList(j3.b.b("proto"), j3.b.b("json"))));
        f5539g = new a(strA, null);
        f5540h = new a(strA2, strA3);
    }

    public a(String str, String str2) {
        this.f5541a = str;
        this.f5542b = str2;
    }

    public static a c(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote("\\"), 2);
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new a(str2, str3);
    }

    @Override // l3.g
    public Set<j3.b> a() {
        return f5538f;
    }

    public byte[] b() {
        String str = this.f5542b;
        if (str == null && this.f5541a == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = "1$";
        objArr[1] = this.f5541a;
        objArr[2] = "\\";
        if (str == null) {
            str = BuildConfig.FLAVOR;
        }
        objArr[3] = str;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName("UTF-8"));
    }

    public String d() {
        return this.f5542b;
    }

    public String e() {
        return this.f5541a;
    }

    @Override // l3.f
    public byte[] getExtras() {
        return b();
    }

    @Override // l3.f
    public String getName() {
        return "cct";
    }
}
