package com.android.volley.toolbox;

import android.os.Handler;
import android.os.Looper;
import com.android.volley.Cache;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;

/* JADX INFO: loaded from: classes.dex */
public class ClearCacheRequest extends Request<Object> {
    private final Cache E;
    private final Runnable F;

    @Override // com.android.volley.Request
    public Request.Priority N() {
        return Request.Priority.IMMEDIATE;
    }

    @Override // com.android.volley.Request
    public boolean T() {
        this.E.clear();
        if (this.F == null) {
            return true;
        }
        new Handler(Looper.getMainLooper()).postAtFrontOfQueue(this.F);
        return true;
    }

    @Override // com.android.volley.Request
    protected Response<Object> Y(NetworkResponse networkResponse) {
        return null;
    }

    @Override // com.android.volley.Request
    protected void j(Object obj) {
    }
}
