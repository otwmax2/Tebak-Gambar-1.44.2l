package com.android.volley;

import com.android.volley.Cache;
import com.android.volley.Request;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes.dex */
class WaitingRequestManager implements Request.NetworkRequestCompleteListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, List<Request<?>>> f5144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ResponseDelivery f5145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RequestQueue f5146c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CacheDispatcher f5147d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f5148e;

    @Override // com.android.volley.Request.NetworkRequestCompleteListener
    public synchronized void a(Request<?> request) {
        BlockingQueue<Request<?>> blockingQueue;
        String strQ = request.q();
        List<Request<?>> listRemove = this.f5144a.remove(strQ);
        if (listRemove != null && !listRemove.isEmpty()) {
            if (VolleyLog.f5136b) {
                VolleyLog.e("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(listRemove.size()), strQ);
            }
            Request<?> requestRemove = listRemove.remove(0);
            this.f5144a.put(strQ, listRemove);
            requestRemove.b0(this);
            RequestQueue requestQueue = this.f5146c;
            if (requestQueue != null) {
                requestQueue.h(requestRemove);
            } else if (this.f5147d != null && (blockingQueue = this.f5148e) != null) {
                try {
                    blockingQueue.put(requestRemove);
                } catch (InterruptedException e10) {
                    VolleyLog.c("Couldn't add request to queue. %s", e10.toString());
                    Thread.currentThread().interrupt();
                    this.f5147d.d();
                }
            }
        }
    }

    @Override // com.android.volley.Request.NetworkRequestCompleteListener
    public void b(Request<?> request, Response<?> response) {
        List<Request<?>> listRemove;
        Cache.Entry entry = response.f5130b;
        if (entry == null || entry.a()) {
            a(request);
            return;
        }
        String strQ = request.q();
        synchronized (this) {
            listRemove = this.f5144a.remove(strQ);
        }
        if (listRemove != null) {
            if (VolleyLog.f5136b) {
                VolleyLog.e("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(listRemove.size()), strQ);
            }
            Iterator<Request<?>> it = listRemove.iterator();
            while (it.hasNext()) {
                this.f5145b.a(it.next(), response);
            }
        }
    }

    synchronized boolean c(Request<?> request) {
        String strQ = request.q();
        if (!this.f5144a.containsKey(strQ)) {
            this.f5144a.put(strQ, null);
            request.b0(this);
            if (VolleyLog.f5136b) {
                VolleyLog.b("new request, sending to network %s", strQ);
            }
            return false;
        }
        List<Request<?>> arrayList = this.f5144a.get(strQ);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        request.e("waiting-for-response");
        arrayList.add(request);
        this.f5144a.put(strQ, arrayList);
        if (VolleyLog.f5136b) {
            VolleyLog.b("Request for cacheKey=%s is in flight, putting on hold.", strQ);
        }
        return true;
    }
}
