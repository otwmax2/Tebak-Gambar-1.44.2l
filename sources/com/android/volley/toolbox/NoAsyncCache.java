package com.android.volley.toolbox;

import com.android.volley.AsyncCache;
import com.android.volley.Cache;

/* JADX INFO: loaded from: classes.dex */
public class NoAsyncCache extends AsyncCache {
    @Override // com.android.volley.AsyncCache
    public void a(String str, AsyncCache.OnGetCompleteCallback onGetCompleteCallback) {
        onGetCompleteCallback.a(null);
    }

    @Override // com.android.volley.AsyncCache
    public void b(AsyncCache.OnWriteCompleteCallback onWriteCompleteCallback) {
        onWriteCompleteCallback.a();
    }

    @Override // com.android.volley.AsyncCache
    public void c(String str, Cache.Entry entry, AsyncCache.OnWriteCompleteCallback onWriteCompleteCallback) {
        onWriteCompleteCallback.a();
    }
}
