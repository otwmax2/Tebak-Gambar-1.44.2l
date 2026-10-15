package androidx.emoji2.text;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: MetadataListReader.java */
/* JADX INFO: loaded from: classes.dex */
class k {

    /* JADX INFO: compiled from: MetadataListReader.java */
    private static class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ByteBuffer f3070a;

        a(ByteBuffer byteBuffer) {
            this.f3070a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // androidx.emoji2.text.k.c
        public int a() throws IOException {
            return this.f3070a.getInt();
        }

        @Override // androidx.emoji2.text.k.c
        public void b(int i10) throws IOException {
            ByteBuffer byteBuffer = this.f3070a;
            byteBuffer.position(byteBuffer.position() + i10);
        }

        @Override // androidx.emoji2.text.k.c
        public long c() throws IOException {
            return k.c(this.f3070a.getInt());
        }

        @Override // androidx.emoji2.text.k.c
        public long getPosition() {
            return this.f3070a.position();
        }

        @Override // androidx.emoji2.text.k.c
        public int readUnsignedShort() throws IOException {
            return k.d(this.f3070a.getShort());
        }
    }

    /* JADX INFO: compiled from: MetadataListReader.java */
    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f3071a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f3072b;

        b(long j10, long j11) {
            this.f3071a = j10;
            this.f3072b = j11;
        }

        long a() {
            return this.f3071a;
        }
    }

    /* JADX INFO: compiled from: MetadataListReader.java */
    private interface c {
        int a() throws IOException;

        void b(int i10) throws IOException;

        long c() throws IOException;

        long getPosition();

        int readUnsignedShort() throws IOException;
    }

    private static b a(c cVar) throws IOException {
        long jC;
        cVar.b(4);
        int unsignedShort = cVar.readUnsignedShort();
        if (unsignedShort > 100) {
            throw new IOException("Cannot read metadata.");
        }
        cVar.b(6);
        int i10 = 0;
        while (true) {
            if (i10 >= unsignedShort) {
                jC = -1;
                break;
            }
            int iA = cVar.a();
            cVar.b(4);
            jC = cVar.c();
            cVar.b(4);
            if (1835365473 == iA) {
                break;
            }
            i10++;
        }
        if (jC != -1) {
            cVar.b((int) (jC - cVar.getPosition()));
            cVar.b(12);
            long jC2 = cVar.c();
            for (int i11 = 0; i11 < jC2; i11++) {
                int iA2 = cVar.a();
                long jC3 = cVar.c();
                long jC4 = cVar.c();
                if (1164798569 == iA2 || 1701669481 == iA2) {
                    return new b(jC3 + jC, jC4);
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    static l0.b b(ByteBuffer byteBuffer) throws IOException {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position((int) a(new a(byteBufferDuplicate)).a());
        return l0.b.h(byteBufferDuplicate);
    }

    static long c(int i10) {
        return ((long) i10) & 4294967295L;
    }

    static int d(short s10) {
        return s10 & 65535;
    }
}
