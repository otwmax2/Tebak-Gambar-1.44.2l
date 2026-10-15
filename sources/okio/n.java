package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Okio.java */
/* JADX INFO: loaded from: classes2.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Logger f33382a = Logger.getLogger(n.class.getName());

    /* JADX INFO: compiled from: Okio.java */
    final class a implements t {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ v f33383o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ OutputStream f33384p;

        a(v vVar, OutputStream outputStream) {
            this.f33383o = vVar;
            this.f33384p = outputStream;
        }

        @Override // okio.t
        public void a2(okio.c cVar, long j10) throws IOException {
            w.b(cVar.f33354p, 0L, j10);
            while (j10 > 0) {
                this.f33383o.f();
                q qVar = cVar.f33353o;
                int iMin = (int) Math.min(j10, qVar.f33397c - qVar.f33396b);
                this.f33384p.write(qVar.f33395a, qVar.f33396b, iMin);
                int i10 = qVar.f33396b + iMin;
                qVar.f33396b = i10;
                long j11 = iMin;
                j10 -= j11;
                cVar.f33354p -= j11;
                if (i10 == qVar.f33397c) {
                    cVar.f33353o = qVar.b();
                    r.a(qVar);
                }
            }
        }

        @Override // okio.t, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f33384p.close();
        }

        @Override // okio.t, java.io.Flushable
        public void flush() throws IOException {
            this.f33384p.flush();
        }

        @Override // okio.t
        public v timeout() {
            return this.f33383o;
        }

        public String toString() {
            return "sink(" + this.f33384p + ")";
        }
    }

    /* JADX INFO: compiled from: Okio.java */
    final class b implements u {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ v f33385o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ InputStream f33386p;

        b(v vVar, InputStream inputStream) {
            this.f33385o = vVar;
            this.f33386p = inputStream;
        }

        @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f33386p.close();
        }

        @Override // okio.u
        public long read(okio.c cVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (j10 == 0) {
                return 0L;
            }
            try {
                this.f33385o.f();
                q qVarV = cVar.v(1);
                int i10 = this.f33386p.read(qVarV.f33395a, qVarV.f33397c, (int) Math.min(j10, 8192 - qVarV.f33397c));
                if (i10 == -1) {
                    return -1L;
                }
                qVarV.f33397c += i10;
                long j11 = i10;
                cVar.f33354p += j11;
                return j11;
            } catch (AssertionError e10) {
                if (n.d(e10)) {
                    throw new IOException(e10);
                }
                throw e10;
            }
        }

        @Override // okio.u
        public v timeout() {
            return this.f33385o;
        }

        public String toString() {
            return "source(" + this.f33386p + ")";
        }
    }

    /* JADX INFO: compiled from: Okio.java */
    /* JADX INFO: loaded from: classes.dex */
    final class c extends okio.a {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ Socket f33387k;

        c(Socket socket) {
            this.f33387k = socket;
        }

        @Override // okio.a
        protected IOException o(@Nullable IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // okio.a
        protected void t() {
            try {
                this.f33387k.close();
            } catch (AssertionError e10) {
                if (!n.d(e10)) {
                    throw e10;
                }
                n.f33382a.log(Level.WARNING, "Failed to close timed out socket " + this.f33387k, (Throwable) e10);
            } catch (Exception e11) {
                n.f33382a.log(Level.WARNING, "Failed to close timed out socket " + this.f33387k, (Throwable) e11);
            }
        }
    }

    private n() {
    }

    public static t a(File file) throws FileNotFoundException {
        if (file != null) {
            return f(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static d b(t tVar) {
        return new o(tVar);
    }

    public static e c(u uVar) {
        return new p(uVar);
    }

    static boolean d(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static t e(File file) throws FileNotFoundException {
        if (file != null) {
            return f(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static t f(OutputStream outputStream) {
        return g(outputStream, new v());
    }

    private static t g(OutputStream outputStream, v vVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (vVar != null) {
            return new a(vVar, outputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static t h(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        okio.a aVarM = m(socket);
        return aVarM.r(g(socket.getOutputStream(), aVarM));
    }

    public static u i(File file) throws FileNotFoundException {
        if (file != null) {
            return j(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static u j(InputStream inputStream) {
        return k(inputStream, new v());
    }

    private static u k(InputStream inputStream, v vVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (vVar != null) {
            return new b(vVar, inputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static u l(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        okio.a aVarM = m(socket);
        return aVarM.s(k(socket.getInputStream(), aVarM));
    }

    private static okio.a m(Socket socket) {
        return new c(socket);
    }
}
