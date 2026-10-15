package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: MetadataRepo.java */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l0.b f3073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final char[] f3074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f3075c = new a(1024);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Typeface f3076d;

    /* JADX INFO: compiled from: MetadataRepo.java */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SparseArray<a> f3077a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private f f3078b;

        private a() {
            this(1);
        }

        a a(int i10) {
            SparseArray<a> sparseArray = this.f3077a;
            if (sparseArray == null) {
                return null;
            }
            return sparseArray.get(i10);
        }

        final f b() {
            return this.f3078b;
        }

        void c(f fVar, int i10, int i11) {
            a aVarA = a(fVar.b(i10));
            if (aVarA == null) {
                aVarA = new a();
                this.f3077a.put(fVar.b(i10), aVarA);
            }
            if (i11 > i10) {
                aVarA.c(fVar, i10 + 1, i11);
            } else {
                aVarA.f3078b = fVar;
            }
        }

        a(int i10) {
            this.f3077a = new SparseArray<>(i10);
        }
    }

    private l(Typeface typeface, l0.b bVar) {
        this.f3076d = typeface;
        this.f3073a = bVar;
        this.f3074b = new char[bVar.k() * 2];
        a(bVar);
    }

    private void a(l0.b bVar) {
        int iK = bVar.k();
        for (int i10 = 0; i10 < iK; i10++) {
            f fVar = new f(this, i10);
            Character.toChars(fVar.f(), this.f3074b, i10 * 2);
            h(fVar);
        }
    }

    public static l b(Typeface typeface, ByteBuffer byteBuffer) throws IOException {
        try {
            androidx.core.os.m.a("EmojiCompat.MetadataRepo.create");
            return new l(typeface, k.b(byteBuffer));
        } finally {
            androidx.core.os.m.b();
        }
    }

    public char[] c() {
        return this.f3074b;
    }

    public l0.b d() {
        return this.f3073a;
    }

    int e() {
        return this.f3073a.l();
    }

    a f() {
        return this.f3075c;
    }

    Typeface g() {
        return this.f3076d;
    }

    void h(f fVar) {
        androidx.core.util.h.g(fVar, "emoji metadata cannot be null");
        androidx.core.util.h.a(fVar.c() > 0, "invalid metadata codepoint length");
        this.f3075c.c(fVar, 0, fVar.c() - 1);
    }
}
