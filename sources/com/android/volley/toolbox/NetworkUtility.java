package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.AuthFailureError;
import com.android.volley.Cache;
import com.android.volley.ClientError;
import com.android.volley.Header;
import com.android.volley.NetworkError;
import com.android.volley.NetworkResponse;
import com.android.volley.NoConnectionError;
import com.android.volley.Request;
import com.android.volley.RetryPolicy;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class NetworkUtility {

    static class RetryInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f5242a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final VolleyError f5243b;

        private RetryInfo(String str, VolleyError volleyError) {
            this.f5242a = str;
            this.f5243b = volleyError;
        }
    }

    private NetworkUtility() {
    }

    static void a(Request<?> request, RetryInfo retryInfo) throws VolleyError {
        RetryPolicy retryPolicyO = request.O();
        int iP = request.P();
        try {
            retryPolicyO.a(retryInfo.f5243b);
            request.e(String.format("%s-retry [timeout=%s]", retryInfo.f5242a, Integer.valueOf(iP)));
        } catch (VolleyError e10) {
            request.e(String.format("%s-timeout-giveup [timeout=%s]", retryInfo.f5242a, Integer.valueOf(iP)));
            throw e10;
        }
    }

    static NetworkResponse b(Request<?> request, long j10, List<Header> list) {
        Cache.Entry entryP = request.p();
        if (entryP == null) {
            return new NetworkResponse(304, (byte[]) null, true, j10, list);
        }
        return new NetworkResponse(304, entryP.f5061a, true, j10, HttpHeaderParser.a(list, entryP));
    }

    static byte[] c(InputStream inputStream, int i10, ByteArrayPool byteArrayPool) throws Throwable {
        byte[] bArrA;
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(byteArrayPool, i10);
        try {
            bArrA = byteArrayPool.a(1024);
            while (true) {
                try {
                    int i11 = inputStream.read(bArrA);
                    if (i11 == -1) {
                        break;
                    }
                    poolingByteArrayOutputStream.write(bArrA, 0, i11);
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                            VolleyLog.e("Error occurred when closing InputStream", new Object[0]);
                        }
                    }
                    byteArrayPool.b(bArrA);
                    poolingByteArrayOutputStream.close();
                    throw th;
                }
            }
            byte[] byteArray = poolingByteArrayOutputStream.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                VolleyLog.e("Error occurred when closing InputStream", new Object[0]);
            }
            byteArrayPool.b(bArrA);
            poolingByteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            bArrA = null;
        }
    }

    static void d(long j10, Request<?> request, byte[] bArr, int i10) {
        if (VolleyLog.f5136b || j10 > 3000) {
            Object[] objArr = new Object[5];
            objArr[0] = request;
            objArr[1] = Long.valueOf(j10);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(i10);
            objArr[4] = Integer.valueOf(request.O().c());
            VolleyLog.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    static RetryInfo e(Request<?> request, IOException iOException, long j10, HttpResponse httpResponse, byte[] bArr) throws VolleyError {
        if (iOException instanceof SocketTimeoutException) {
            return new RetryInfo("socket", new TimeoutError());
        }
        if (iOException instanceof MalformedURLException) {
            throw new RuntimeException("Bad URL " + request.R(), iOException);
        }
        if (httpResponse == null) {
            if (request.g0()) {
                return new RetryInfo("connection", new NoConnectionError());
            }
            throw new NoConnectionError(iOException);
        }
        int iD = httpResponse.d();
        VolleyLog.c("Unexpected response code %d for %s", Integer.valueOf(iD), request.R());
        if (bArr == null) {
            return new RetryInfo("network", new NetworkError());
        }
        NetworkResponse networkResponse = new NetworkResponse(iD, bArr, false, SystemClock.elapsedRealtime() - j10, httpResponse.c());
        if (iD == 401 || iD == 403) {
            return new RetryInfo("auth", new AuthFailureError(networkResponse));
        }
        if (iD >= 400 && iD <= 499) {
            throw new ClientError(networkResponse);
        }
        if (iD < 500 || iD > 599 || !request.h0()) {
            throw new ServerError(networkResponse);
        }
        return new RetryInfo("server", new ServerError(networkResponse));
    }
}
