package com.google.gson;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: FieldNamingPolicy.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class d implements com.google.gson.e {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final d f26683o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final d f26684p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final d f26685q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final d f26686r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final d f26687s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final d f26688t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ d[] f26689u;

    /* JADX INFO: compiled from: FieldNamingPolicy.java */
    enum a extends d {
        a(String str, int i10) {
            super(str, i10, null);
        }

        @Override // com.google.gson.e
        public String c(Field field) {
            return field.getName();
        }
    }

    static {
        a aVar = new a("IDENTITY", 0);
        f26683o = aVar;
        d dVar = new d("UPPER_CAMEL_CASE", 1) { // from class: com.google.gson.d.b
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.e
            public String c(Field field) {
                return d.f(field.getName());
            }
        };
        f26684p = dVar;
        d dVar2 = new d("UPPER_CAMEL_CASE_WITH_SPACES", 2) { // from class: com.google.gson.d.c
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.e
            public String c(Field field) {
                return d.f(d.e(field.getName(), " "));
            }
        };
        f26685q = dVar2;
        d dVar3 = new d("LOWER_CASE_WITH_UNDERSCORES", 3) { // from class: com.google.gson.d.d
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.e
            public String c(Field field) {
                return d.e(field.getName(), "_").toLowerCase(Locale.ENGLISH);
            }
        };
        f26686r = dVar3;
        d dVar4 = new d("LOWER_CASE_WITH_DASHES", 4) { // from class: com.google.gson.d.e
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.e
            public String c(Field field) {
                return d.e(field.getName(), "-").toLowerCase(Locale.ENGLISH);
            }
        };
        f26687s = dVar4;
        d dVar5 = new d("LOWER_CASE_WITH_DOTS", 5) { // from class: com.google.gson.d.f
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.e
            public String c(Field field) {
                return d.e(field.getName(), ".").toLowerCase(Locale.ENGLISH);
            }
        };
        f26688t = dVar5;
        f26689u = new d[]{aVar, dVar, dVar2, dVar3, dVar4, dVar5};
    }

    private d(String str, int i10) {
    }

    static String e(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    static String f(String str) {
        int length = str.length() - 1;
        int i10 = 0;
        while (!Character.isLetter(str.charAt(i10)) && i10 < length) {
            i10++;
        }
        char cCharAt = str.charAt(i10);
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        if (i10 == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i10) + upperCase + str.substring(i10 + 1);
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f26689u.clone();
    }

    /* synthetic */ d(String str, int i10, a aVar) {
        this(str, i10);
    }
}
