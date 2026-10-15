package com.android.volley;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface Cache {

    public static class Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f5061a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f5062b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f5063c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f5064d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f5065e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f5066f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Map<String, String> f5067g = Collections.emptyMap();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List<Header> f5068h;

        public boolean a() {
            return b(System.currentTimeMillis());
        }

        boolean b(long j10) {
            return this.f5065e < j10;
        }

        boolean c(long j10) {
            return this.f5066f < j10;
        }
    }

    Entry a(String str);

    void b();

    void c(String str, boolean z10);

    void clear();

    void d(String str, Entry entry);
}
