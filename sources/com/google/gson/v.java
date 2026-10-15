package com.google.gson;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: LongSerializationPolicy.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class v {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final v f26737o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final v f26738p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final /* synthetic */ v[] f26739q;

    /* JADX INFO: compiled from: LongSerializationPolicy.java */
    enum a extends v {
        a(String str, int i10) {
            super(str, i10, null);
        }
    }

    static {
        a aVar = new a("DEFAULT", 0);
        f26737o = aVar;
        v vVar = new v("STRING", 1) { // from class: com.google.gson.v.b
            {
                a aVar2 = null;
            }
        };
        f26738p = vVar;
        f26739q = new v[]{aVar, vVar};
    }

    private v(String str, int i10) {
    }

    public static v valueOf(String str) {
        return (v) Enum.valueOf(v.class, str);
    }

    public static v[] values() {
        return (v[]) f26739q.clone();
    }

    /* synthetic */ v(String str, int i10, a aVar) {
        this(str, i10);
    }
}
