package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_messaging.zzl;
import com.google.android.gms.internal.firebase_messaging.zzm;
import com.google.android.gms.internal.firebase_messaging.zzt;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class c0 implements Closeable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final URL f26418o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Task<Bitmap> f26419p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private volatile InputStream f26420q;

    private c0(URL url) {
        this.f26418o = url;
    }

    private byte[] c() throws IOException {
        URLConnection uRLConnectionOpenConnection = this.f26418o.openConnection();
        if (uRLConnectionOpenConnection.getContentLength() > 1048576) {
            throw new IOException("Content-Length exceeds max size of 1048576");
        }
        InputStream inputStream = uRLConnectionOpenConnection.getInputStream();
        try {
            this.f26420q = inputStream;
            byte[] bArrA = zzl.a(zzl.b(inputStream, 1048577L));
            if (inputStream != null) {
                inputStream.close();
            }
            if (Log.isLoggable("FirebaseMessaging", 2)) {
                String strValueOf = String.valueOf(this.f26418o);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 34);
                sb.append("Downloaded ");
                sb.append(bArrA.length);
                sb.append(" bytes from ");
                sb.append(strValueOf);
                Log.v("FirebaseMessaging", sb.toString());
            }
            if (bArrA.length <= 1048576) {
                return bArrA;
            }
            throw new IOException("Image exceeds max size of 1048576");
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    zzt.a(th, th2);
                }
            }
            throw th;
        }
    }

    public static c0 d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new c0(new URL(str));
        } catch (MalformedURLException unused) {
            String strValueOf = String.valueOf(str);
            Log.w("FirebaseMessaging", strValueOf.length() != 0 ? "Not downloading image, bad URL: ".concat(strValueOf) : new String("Not downloading image, bad URL: "));
            return null;
        }
    }

    public Bitmap b() throws IOException {
        String strValueOf = String.valueOf(this.f26418o);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 22);
        sb.append("Starting download of: ");
        sb.append(strValueOf);
        Log.i("FirebaseMessaging", sb.toString());
        byte[] bArrC = c();
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrC, 0, bArrC.length);
        if (bitmapDecodeByteArray == null) {
            String strValueOf2 = String.valueOf(this.f26418o);
            StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 24);
            sb2.append("Failed to decode image: ");
            sb2.append(strValueOf2);
            throw new IOException(sb2.toString());
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String strValueOf3 = String.valueOf(this.f26418o);
            StringBuilder sb3 = new StringBuilder(strValueOf3.length() + 31);
            sb3.append("Successfully downloaded image: ");
            sb3.append(strValueOf3);
            Log.d("FirebaseMessaging", sb3.toString());
        }
        return bitmapDecodeByteArray;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            zzm.a(this.f26420q);
        } catch (NullPointerException e10) {
            Log.e("FirebaseMessaging", "Failed to close the image download stream.", e10);
        }
    }

    public Task<Bitmap> e() {
        return (Task) Preconditions.k(this.f26419p);
    }

    public void f(Executor executor) {
        this.f26419p = Tasks.c(executor, new Callable(this) { // from class: com.google.firebase.messaging.b0

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final c0 f26413a;

            {
                this.f26413a = this;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                return this.f26413a.b();
            }
        });
    }
}
