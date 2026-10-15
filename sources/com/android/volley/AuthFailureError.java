package com.android.volley;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class AuthFailureError extends VolleyError {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Intent f5060q;

    public AuthFailureError() {
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f5060q != null ? "User needs to (re)enter credentials." : super.getMessage();
    }

    public AuthFailureError(NetworkResponse networkResponse) {
        super(networkResponse);
    }
}
