package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.Header;
import com.android.volley.Network;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.VolleyError;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BasicNetwork implements Network {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BaseHttpStack f5174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final ByteArrayPool f5175b;

    @Override // com.android.volley.Network
    public NetworkResponse a(Request<?> request) throws VolleyError {
        IOException iOException;
        HttpResponse httpResponse;
        byte[] bArr;
        HttpResponse httpResponseB;
        int iD;
        List<Header> listC;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            try {
                httpResponseB = this.f5174a.b(request, HttpHeaderParser.c(request.p()));
                try {
                    iD = httpResponseB.d();
                    listC = httpResponseB.c();
                    break;
                } catch (IOException e10) {
                    bArr = null;
                    httpResponse = httpResponseB;
                    iOException = e10;
                }
            } catch (IOException e11) {
                iOException = e11;
                httpResponse = null;
                bArr = null;
            }
            NetworkUtility.a(request, NetworkUtility.e(request, iOException, jElapsedRealtime, httpResponse, bArr));
        }
        if (iD == 304) {
            return NetworkUtility.b(request, SystemClock.elapsedRealtime() - jElapsedRealtime, listC);
        }
        InputStream inputStreamA = httpResponseB.a();
        byte[] bArrC = inputStreamA != null ? NetworkUtility.c(inputStreamA, httpResponseB.b(), this.f5175b) : new byte[0];
        NetworkUtility.d(SystemClock.elapsedRealtime() - jElapsedRealtime, request, bArrC, iD);
        if (iD < 200 || iD > 299) {
            throw new IOException();
        }
        return new NetworkResponse(iD, bArrC, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listC);
    }
}
