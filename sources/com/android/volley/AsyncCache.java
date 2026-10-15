package com.android.volley;

import com.android.volley.Cache;

/* JADX INFO: loaded from: classes.dex */
public abstract class AsyncCache {

    public interface OnGetCompleteCallback {
        void a(Cache.Entry entry);
    }

    public interface OnWriteCompleteCallback {
        void a();
    }

    public abstract void a(String str, OnGetCompleteCallback onGetCompleteCallback);

    public abstract void b(OnWriteCompleteCallback onWriteCompleteCallback);

    public abstract void c(String str, Cache.Entry entry, OnWriteCompleteCallback onWriteCompleteCallback);
}
