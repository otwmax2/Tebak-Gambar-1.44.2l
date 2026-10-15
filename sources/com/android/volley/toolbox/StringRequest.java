package com.android.volley.toolbox;

import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class StringRequest extends Request<String> {
    private final Object E;
    private Response.Listener<String> F;

    @Override // com.android.volley.Request
    protected Response<String> Y(NetworkResponse networkResponse) {
        String str;
        try {
            str = new String(networkResponse.f5095b, HttpHeaderParser.f(networkResponse.f5096c));
        } catch (UnsupportedEncodingException unused) {
            str = new String(networkResponse.f5095b);
        }
        return Response.c(str, HttpHeaderParser.e(networkResponse));
    }

    @Override // com.android.volley.Request
    public void f() {
        super.f();
        synchronized (this.E) {
            this.F = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.Request
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public void j(String str) {
        Response.Listener<String> listener;
        synchronized (this.E) {
            listener = this.F;
        }
        if (listener != null) {
            listener.b(str);
        }
    }
}
