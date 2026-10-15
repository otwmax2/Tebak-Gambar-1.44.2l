package com.android.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.volley.Cache;
import com.android.volley.Response;
import com.android.volley.VolleyLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class Request<T> implements Comparable<Request<T>> {
    private boolean A;
    private RetryPolicy B;
    private Cache.Entry C;
    private NetworkRequestCompleteListener D;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final VolleyLog.MarkerLog f5100o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f5101p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f5102q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f5103r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Object f5104s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Response.ErrorListener f5105t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Integer f5106u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private RequestQueue f5107v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f5108w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f5109x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f5110y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f5111z;

    public interface Method {
    }

    interface NetworkRequestCompleteListener {
        void a(Request<?> request);

        void b(Request<?> request, Response<?> response);
    }

    public enum Priority {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public Request(int i10, String str, Response.ErrorListener errorListener) {
        this.f5100o = VolleyLog.MarkerLog.f5138c ? new VolleyLog.MarkerLog() : null;
        this.f5104s = new Object();
        this.f5108w = true;
        this.f5109x = false;
        this.f5110y = false;
        this.f5111z = false;
        this.A = false;
        this.C = null;
        this.f5101p = i10;
        this.f5102q = str;
        this.f5105t = errorListener;
        d0(new DefaultRetryPolicy());
        this.f5103r = l(str);
    }

    private byte[] k(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() == null || entry.getValue() == null) {
                    throw new IllegalArgumentException(String.format("Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null.", entry.getKey(), entry.getValue()));
                }
                sb.append(URLEncoder.encode(entry.getKey(), str));
                sb.append('=');
                sb.append(URLEncoder.encode(entry.getValue(), str));
                sb.append('&');
            }
            return sb.toString().getBytes(str);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Encoding not supported: " + str, e10);
        }
    }

    private static int l(String str) {
        Uri uri;
        String host;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null || (host = uri.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    protected String I() {
        return "UTF-8";
    }

    @Deprecated
    public byte[] J() throws AuthFailureError {
        Map<String, String> mapL = L();
        if (mapL == null || mapL.size() <= 0) {
            return null;
        }
        return k(mapL, M());
    }

    @Deprecated
    public String K() {
        return o();
    }

    @Deprecated
    protected Map<String, String> L() throws AuthFailureError {
        return u();
    }

    @Deprecated
    protected String M() {
        return I();
    }

    public Priority N() {
        return Priority.NORMAL;
    }

    public RetryPolicy O() {
        return this.B;
    }

    public final int P() {
        return O().b();
    }

    public int Q() {
        return this.f5103r;
    }

    public String R() {
        return this.f5102q;
    }

    public boolean S() {
        boolean z10;
        synchronized (this.f5104s) {
            z10 = this.f5110y;
        }
        return z10;
    }

    public boolean T() {
        boolean z10;
        synchronized (this.f5104s) {
            z10 = this.f5109x;
        }
        return z10;
    }

    public void U() {
        synchronized (this.f5104s) {
            this.f5110y = true;
        }
    }

    void V() {
        NetworkRequestCompleteListener networkRequestCompleteListener;
        synchronized (this.f5104s) {
            networkRequestCompleteListener = this.D;
        }
        if (networkRequestCompleteListener != null) {
            networkRequestCompleteListener.a(this);
        }
    }

    void W(Response<?> response) {
        NetworkRequestCompleteListener networkRequestCompleteListener;
        synchronized (this.f5104s) {
            networkRequestCompleteListener = this.D;
        }
        if (networkRequestCompleteListener != null) {
            networkRequestCompleteListener.b(this, response);
        }
    }

    protected VolleyError X(VolleyError volleyError) {
        return volleyError;
    }

    protected abstract Response<T> Y(NetworkResponse networkResponse);

    void Z(int i10) {
        RequestQueue requestQueue = this.f5107v;
        if (requestQueue != null) {
            requestQueue.g(this, i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> a0(Cache.Entry entry) {
        this.C = entry;
        return this;
    }

    void b0(NetworkRequestCompleteListener networkRequestCompleteListener) {
        synchronized (this.f5104s) {
            this.D = networkRequestCompleteListener;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> c0(RequestQueue requestQueue) {
        this.f5107v = requestQueue;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> d0(RetryPolicy retryPolicy) {
        this.B = retryPolicy;
        return this;
    }

    public void e(String str) {
        if (VolleyLog.MarkerLog.f5138c) {
            this.f5100o.a(str, Thread.currentThread().getId());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> e0(int i10) {
        this.f5106u = Integer.valueOf(i10);
        return this;
    }

    public void f() {
        synchronized (this.f5104s) {
            this.f5109x = true;
            this.f5105t = null;
        }
    }

    public final boolean f0() {
        return this.f5108w;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public int compareTo(Request<T> request) {
        Priority priorityN = N();
        Priority priorityN2 = request.N();
        return priorityN == priorityN2 ? this.f5106u.intValue() - request.f5106u.intValue() : priorityN2.ordinal() - priorityN.ordinal();
    }

    public final boolean g0() {
        return this.A;
    }

    public final boolean h0() {
        return this.f5111z;
    }

    public void i(VolleyError volleyError) {
        Response.ErrorListener errorListener;
        synchronized (this.f5104s) {
            errorListener = this.f5105t;
        }
        if (errorListener != null) {
            errorListener.c(volleyError);
        }
    }

    protected abstract void j(T t10);

    void m(final String str) {
        RequestQueue requestQueue = this.f5107v;
        if (requestQueue != null) {
            requestQueue.c(this);
        }
        if (VolleyLog.MarkerLog.f5138c) {
            final long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.volley.Request.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Request.this.f5100o.a(str, id);
                        Request.this.f5100o.b(Request.this.toString());
                    }
                });
            } else {
                this.f5100o.a(str, id);
                this.f5100o.b(toString());
            }
        }
    }

    public byte[] n() throws AuthFailureError {
        Map<String, String> mapU = u();
        if (mapU == null || mapU.size() <= 0) {
            return null;
        }
        return k(mapU, I());
    }

    public String o() {
        return "application/x-www-form-urlencoded; charset=" + I();
    }

    public Cache.Entry p() {
        return this.C;
    }

    public String q() {
        String strR = R();
        int iS = s();
        if (iS == 0 || iS == -1) {
            return strR;
        }
        return Integer.toString(iS) + '-' + strR;
    }

    public Map<String, String> r() throws AuthFailureError {
        return Collections.emptyMap();
    }

    public int s() {
        return this.f5101p;
    }

    public String toString() {
        String str = "0x" + Integer.toHexString(Q());
        StringBuilder sb = new StringBuilder();
        sb.append(T() ? "[X] " : "[ ] ");
        sb.append(R());
        sb.append(" ");
        sb.append(str);
        sb.append(" ");
        sb.append(N());
        sb.append(" ");
        sb.append(this.f5106u);
        return sb.toString();
    }

    protected Map<String, String> u() throws AuthFailureError {
        return null;
    }
}
