package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import java.util.Date;

/* JADX INFO: compiled from: ConfigMetadataClient.java */
/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Date f26661d = new Date(-1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Date f26662e = new Date(-1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f26663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f26664b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f26665c = new Object();

    /* JADX INFO: compiled from: ConfigMetadataClient.java */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f26666a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Date f26667b;

        a(int i10, Date date) {
            this.f26666a = i10;
            this.f26667b = date;
        }

        Date a() {
            return this.f26667b;
        }

        int b() {
            return this.f26666a;
        }
    }

    public n(SharedPreferences sharedPreferences) {
        this.f26663a = sharedPreferences;
    }

    a a() {
        a aVar;
        synchronized (this.f26665c) {
            aVar = new a(this.f26663a.getInt("num_failed_fetches", 0), new Date(this.f26663a.getLong("backoff_end_time_in_millis", -1L)));
        }
        return aVar;
    }

    public long b() {
        return this.f26663a.getLong("fetch_timeout_in_seconds", 60L);
    }

    String c() {
        return this.f26663a.getString("last_fetch_etag", null);
    }

    Date d() {
        return new Date(this.f26663a.getLong("last_fetch_time_in_millis", -1L));
    }

    void e() {
        f(0, f26662e);
    }

    void f(int i10, Date date) {
        synchronized (this.f26665c) {
            this.f26663a.edit().putInt("num_failed_fetches", i10).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    public void g(u6.j jVar) {
        synchronized (this.f26664b) {
            this.f26663a.edit().putLong("fetch_timeout_in_seconds", jVar.a()).putLong("minimum_fetch_interval_in_seconds", jVar.b()).commit();
        }
    }

    void h(String str) {
        synchronized (this.f26664b) {
            this.f26663a.edit().putString("last_fetch_etag", str).apply();
        }
    }

    void i() {
        synchronized (this.f26664b) {
            this.f26663a.edit().putInt("last_fetch_status", 1).apply();
        }
    }

    void j(Date date) {
        synchronized (this.f26664b) {
            this.f26663a.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
        }
    }

    void k() {
        synchronized (this.f26664b) {
            this.f26663a.edit().putInt("last_fetch_status", 2).apply();
        }
    }
}
