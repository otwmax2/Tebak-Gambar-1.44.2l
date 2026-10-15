package com.android.volley;

/* JADX INFO: loaded from: classes.dex */
public class DefaultRetryPolicy implements RetryPolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f5079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5080c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f5081d;

    public DefaultRetryPolicy() {
        this(2500, 1, 1.0f);
    }

    @Override // com.android.volley.RetryPolicy
    public void a(VolleyError volleyError) throws VolleyError {
        this.f5079b++;
        int i10 = this.f5078a;
        this.f5078a = i10 + ((int) (i10 * this.f5081d));
        if (!d()) {
            throw volleyError;
        }
    }

    @Override // com.android.volley.RetryPolicy
    public int b() {
        return this.f5078a;
    }

    @Override // com.android.volley.RetryPolicy
    public int c() {
        return this.f5079b;
    }

    protected boolean d() {
        return this.f5079b <= this.f5080c;
    }

    public DefaultRetryPolicy(int i10, int i11, float f10) {
        this.f5078a = i10;
        this.f5080c = i11;
        this.f5081d = f10;
    }
}
