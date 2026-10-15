package c7;

import com.google.gson.p;
import com.google.gson.u;
import d7.n;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: compiled from: Streams.java */
/* JADX INFO: loaded from: classes2.dex */
public final class l {
    public static com.google.gson.l a(h7.a aVar) throws p {
        boolean z10;
        try {
            try {
                aVar.x();
                z10 = false;
            } catch (EOFException e10) {
                e = e10;
                z10 = true;
            }
            try {
                return n.X.b(aVar);
            } catch (EOFException e11) {
                e = e11;
                if (z10) {
                    return com.google.gson.n.f26734a;
                }
                throw new u(e);
            }
        } catch (h7.d e12) {
            throw new u(e12);
        } catch (IOException e13) {
            throw new com.google.gson.m(e13);
        } catch (NumberFormatException e14) {
            throw new u(e14);
        }
    }

    public static void b(com.google.gson.l lVar, h7.c cVar) throws IOException {
        n.X.d(cVar, lVar);
    }

    public static Writer c(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }

    /* JADX INFO: compiled from: Streams.java */
    private static final class a extends Writer {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Appendable f4947o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final C0095a f4948p = new C0095a();

        /* JADX INFO: renamed from: c7.l$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Streams.java */
        static class C0095a implements CharSequence {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            char[] f4949o;

            C0095a() {
            }

            @Override // java.lang.CharSequence
            public char charAt(int i10) {
                return this.f4949o[i10];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f4949o.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i10, int i11) {
                return new String(this.f4949o, i10, i11 - i10);
            }
        }

        a(Appendable appendable) {
            this.f4947o = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i10, int i11) throws IOException {
            C0095a c0095a = this.f4948p;
            c0095a.f4949o = cArr;
            this.f4947o.append(c0095a, i10, i11 + i10);
        }

        @Override // java.io.Writer
        public void write(int i10) throws IOException {
            this.f4947o.append((char) i10);
        }
    }
}
