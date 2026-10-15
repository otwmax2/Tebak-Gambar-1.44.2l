package com.android.volley.toolbox;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyLog;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public abstract class JsonRequest<T> extends Request<T> {
    private static final String H = String.format("application/json; charset=%s", "utf-8");
    private final Object E;
    private Response.Listener<T> F;
    private final String G;

    @Override // com.android.volley.Request
    @Deprecated
    public byte[] J() {
        return n();
    }

    @Override // com.android.volley.Request
    @Deprecated
    public String K() {
        return o();
    }

    @Override // com.android.volley.Request
    public void f() {
        super.f();
        synchronized (this.E) {
            this.F = null;
        }
    }

    @Override // com.android.volley.Request
    protected void j(T t10) {
        Response.Listener<T> listener;
        synchronized (this.E) {
            listener = this.F;
        }
        if (listener != null) {
            listener.b(t10);
        }
    }

    @Override // com.android.volley.Request
    public byte[] n() {
        try {
            String str = this.G;
            if (str == null) {
                return null;
            }
            return str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            VolleyLog.f("Unsupported Encoding while trying to get the bytes of %s using %s", this.G, "utf-8");
            return null;
        }
    }

    @Override // com.android.volley.Request
    public String o() {
        return H;
    }
}
