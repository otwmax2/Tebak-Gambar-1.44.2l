package com.android.volley.toolbox;

import com.android.volley.Header;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class HttpResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<Header> f5198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5199c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final InputStream f5200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f5201e;

    public HttpResponse(int i10, List<Header> list) {
        this(i10, list, -1, null);
    }

    public final InputStream a() {
        InputStream inputStream = this.f5200d;
        if (inputStream != null) {
            return inputStream;
        }
        if (this.f5201e != null) {
            return new ByteArrayInputStream(this.f5201e);
        }
        return null;
    }

    public final int b() {
        return this.f5199c;
    }

    public final List<Header> c() {
        return Collections.unmodifiableList(this.f5198b);
    }

    public final int d() {
        return this.f5197a;
    }

    public HttpResponse(int i10, List<Header> list, int i11, InputStream inputStream) {
        this.f5197a = i10;
        this.f5198b = list;
        this.f5199c = i11;
        this.f5200d = inputStream;
        this.f5201e = null;
    }
}
