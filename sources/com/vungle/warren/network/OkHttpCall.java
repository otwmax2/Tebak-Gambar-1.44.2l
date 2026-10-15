package com.vungle.warren.network;

import android.util.Log;
import com.vungle.warren.network.converters.Converter;
import ja.c0;
import ja.d0;
import ja.e;
import ja.f;
import ja.v;
import java.io.IOException;
import okio.c;
import okio.i;
import okio.n;

/* JADX INFO: loaded from: classes2.dex */
final class OkHttpCall<T> implements Call<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f28211c = "OkHttpCall";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Converter<d0, T> f28212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f28213b;

    static final class ExceptionCatchingResponseBody extends d0 {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final d0 f28216p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        IOException f28217q;

        ExceptionCatchingResponseBody(d0 d0Var) {
            this.f28216p = d0Var;
        }

        void c() throws IOException {
            IOException iOException = this.f28217q;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override // ja.d0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f28216p.close();
        }

        @Override // ja.d0
        public long contentLength() {
            return this.f28216p.contentLength();
        }

        @Override // ja.d0
        public v contentType() {
            return this.f28216p.contentType();
        }

        @Override // ja.d0
        public okio.e source() {
            return n.c(new i(this.f28216p.source()) { // from class: com.vungle.warren.network.OkHttpCall.ExceptionCatchingResponseBody.1
                @Override // okio.i, okio.u
                public long read(c cVar, long j10) throws IOException {
                    try {
                        return super.read(cVar, j10);
                    } catch (IOException e10) {
                        ExceptionCatchingResponseBody.this.f28217q = e10;
                        throw e10;
                    }
                }
            });
        }
    }

    static final class NoContentResponseBody extends d0 {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final v f28219p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final long f28220q;

        NoContentResponseBody(v vVar, long j10) {
            this.f28219p = vVar;
            this.f28220q = j10;
        }

        @Override // ja.d0
        public long contentLength() {
            return this.f28220q;
        }

        @Override // ja.d0
        public v contentType() {
            return this.f28219p;
        }

        @Override // ja.d0
        public okio.e source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    OkHttpCall(e eVar, Converter<d0, T> converter) {
        this.f28213b = eVar;
        this.f28212a = converter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Response<T> d(c0 c0Var, Converter<d0, T> converter) throws IOException {
        d0 d0VarB = c0Var.b();
        c0 c0VarC = c0Var.k().b(new NoContentResponseBody(d0VarB.contentType(), d0VarB.contentLength())).c();
        int iD = c0VarC.d();
        if (iD < 200 || iD >= 300) {
            try {
                c cVar = new c();
                d0VarB.source().l3(cVar);
                return Response.error(d0.create(d0VarB.contentType(), d0VarB.contentLength(), cVar), c0VarC);
            } finally {
                d0VarB.close();
            }
        }
        if (iD == 204 || iD == 205) {
            d0VarB.close();
            return Response.success(null, c0VarC);
        }
        ExceptionCatchingResponseBody exceptionCatchingResponseBody = new ExceptionCatchingResponseBody(d0VarB);
        try {
            return Response.success(converter.convert(exceptionCatchingResponseBody), c0VarC);
        } catch (RuntimeException e10) {
            exceptionCatchingResponseBody.c();
            throw e10;
        }
    }

    @Override // com.vungle.warren.network.Call
    public void enqueue(final Callback<T> callback) {
        this.f28213b.M1(new f() { // from class: com.vungle.warren.network.OkHttpCall.1
            private void a(Throwable th) {
                try {
                    callback.onFailure(OkHttpCall.this, th);
                } catch (Throwable th2) {
                    Log.w(OkHttpCall.f28211c, "Error on executing callback", th2);
                }
            }

            @Override // ja.f
            public void onFailure(e eVar, IOException iOException) {
                a(iOException);
            }

            @Override // ja.f
            public void onResponse(e eVar, c0 c0Var) {
                try {
                    OkHttpCall okHttpCall = OkHttpCall.this;
                    try {
                        callback.onResponse(OkHttpCall.this, okHttpCall.d(c0Var, okHttpCall.f28212a));
                    } catch (Throwable th) {
                        Log.w(OkHttpCall.f28211c, "Error on excuting callback", th);
                    }
                } catch (Throwable th2) {
                    a(th2);
                }
            }
        });
    }

    @Override // com.vungle.warren.network.Call
    public Response<T> execute() throws IOException {
        e eVar;
        synchronized (this) {
            eVar = this.f28213b;
        }
        return d(eVar.execute(), this.f28212a);
    }
}
