package androidx.emoji2.text;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.emoji2.text.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: EmojiCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Object f2999n = new Object();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Object f3000o = new Object();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static volatile d f3001p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<e> f3003b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f3006e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final g f3007f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final boolean f3008g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final boolean f3009h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final int[] f3010i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f3011j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f3012k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f3013l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final InterfaceC0050d f3014m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ReadWriteLock f3002a = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile int f3004c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f3005d = new Handler(Looper.getMainLooper());

    /* JADX INFO: compiled from: EmojiCompat.java */
    private static final class a extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile androidx.emoji2.text.g f3015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile l f3016c;

        /* JADX INFO: renamed from: androidx.emoji2.text.d$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: EmojiCompat.java */
        class C0049a extends h {
            C0049a() {
            }

            @Override // androidx.emoji2.text.d.h
            public void a(Throwable th) {
                a.this.f3018a.m(th);
            }

            @Override // androidx.emoji2.text.d.h
            public void b(l lVar) {
                a.this.d(lVar);
            }
        }

        a(d dVar) {
            super(dVar);
        }

        @Override // androidx.emoji2.text.d.b
        void a() {
            try {
                this.f3018a.f3007f.a(new C0049a());
            } catch (Throwable th) {
                this.f3018a.m(th);
            }
        }

        @Override // androidx.emoji2.text.d.b
        CharSequence b(CharSequence charSequence, int i10, int i11, int i12, boolean z10) {
            return this.f3015b.h(charSequence, i10, i11, i12, z10);
        }

        @Override // androidx.emoji2.text.d.b
        void c(EditorInfo editorInfo) {
            editorInfo.extras.putInt("android.support.text.emoji.emojiCompat_metadataVersion", this.f3016c.e());
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", this.f3018a.f3008g);
        }

        void d(l lVar) {
            if (lVar == null) {
                this.f3018a.m(new IllegalArgumentException("metadataRepo cannot be null"));
                return;
            }
            this.f3016c = lVar;
            l lVar2 = this.f3016c;
            i iVar = new i();
            InterfaceC0050d interfaceC0050d = this.f3018a.f3014m;
            d dVar = this.f3018a;
            this.f3015b = new androidx.emoji2.text.g(lVar2, iVar, interfaceC0050d, dVar.f3009h, dVar.f3010i);
            this.f3018a.n();
        }
    }

    /* JADX INFO: compiled from: EmojiCompat.java */
    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final d f3018a;

        b(d dVar) {
            this.f3018a = dVar;
        }

        void a() {
            this.f3018a.n();
        }

        CharSequence b(CharSequence charSequence, int i10, int i11, int i12, boolean z10) {
            return charSequence;
        }

        void c(EditorInfo editorInfo) {
        }
    }

    /* JADX INFO: compiled from: EmojiCompat.java */
    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final g f3019a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f3020b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f3021c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int[] f3022d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Set<e> f3023e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f3024f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f3025g = -16711936;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f3026h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        InterfaceC0050d f3027i = new g.b();

        protected c(g gVar) {
            androidx.core.util.h.g(gVar, "metadataLoader cannot be null.");
            this.f3019a = gVar;
        }

        protected final g a() {
            return this.f3019a;
        }

        public c b(int i10) {
            this.f3026h = i10;
            return this;
        }
    }

    /* JADX INFO: renamed from: androidx.emoji2.text.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: EmojiCompat.java */
    public interface InterfaceC0050d {
        boolean a(CharSequence charSequence, int i10, int i11, int i12);
    }

    /* JADX INFO: compiled from: EmojiCompat.java */
    public static abstract class e {
        public void a(Throwable th) {
        }

        public void b() {
        }
    }

    /* JADX INFO: compiled from: EmojiCompat.java */
    private static class f implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final List<e> f3028o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final Throwable f3029p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final int f3030q;

        f(e eVar, int i10) {
            this(Arrays.asList((e) androidx.core.util.h.g(eVar, "initCallback cannot be null")), i10, null);
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f3028o.size();
            int i10 = 0;
            if (this.f3030q != 1) {
                while (i10 < size) {
                    this.f3028o.get(i10).a(this.f3029p);
                    i10++;
                }
            } else {
                while (i10 < size) {
                    this.f3028o.get(i10).b();
                    i10++;
                }
            }
        }

        f(Collection<e> collection, int i10) {
            this(collection, i10, null);
        }

        f(Collection<e> collection, int i10, Throwable th) {
            androidx.core.util.h.g(collection, "initCallbacks cannot be null");
            this.f3028o = new ArrayList(collection);
            this.f3030q = i10;
            this.f3029p = th;
        }
    }

    /* JADX INFO: compiled from: EmojiCompat.java */
    public interface g {
        void a(h hVar);
    }

    /* JADX INFO: compiled from: EmojiCompat.java */
    public static abstract class h {
        public abstract void a(Throwable th);

        public abstract void b(l lVar);
    }

    /* JADX INFO: compiled from: EmojiCompat.java */
    static class i {
        i() {
        }

        androidx.emoji2.text.h a(androidx.emoji2.text.f fVar) {
            return new n(fVar);
        }
    }

    private d(c cVar) {
        this.f3008g = cVar.f3020b;
        this.f3009h = cVar.f3021c;
        this.f3010i = cVar.f3022d;
        this.f3011j = cVar.f3024f;
        this.f3012k = cVar.f3025g;
        this.f3007f = cVar.f3019a;
        this.f3013l = cVar.f3026h;
        this.f3014m = cVar.f3027i;
        o.b bVar = new o.b();
        this.f3003b = bVar;
        Set<e> set = cVar.f3023e;
        if (set != null && !set.isEmpty()) {
            bVar.addAll(cVar.f3023e);
        }
        this.f3006e = Build.VERSION.SDK_INT < 19 ? new b(this) : new a(this);
        l();
    }

    public static d b() {
        d dVar;
        synchronized (f2999n) {
            dVar = f3001p;
            androidx.core.util.h.h(dVar != null, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
        }
        return dVar;
    }

    public static boolean e(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
        if (Build.VERSION.SDK_INT >= 19) {
            return androidx.emoji2.text.g.c(inputConnection, editable, i10, i11, z10);
        }
        return false;
    }

    public static boolean f(Editable editable, int i10, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 19) {
            return androidx.emoji2.text.g.d(editable, i10, keyEvent);
        }
        return false;
    }

    public static d g(c cVar) {
        d dVar = f3001p;
        if (dVar == null) {
            synchronized (f2999n) {
                dVar = f3001p;
                if (dVar == null) {
                    dVar = new d(cVar);
                    f3001p = dVar;
                }
            }
        }
        return dVar;
    }

    public static boolean h() {
        return f3001p != null;
    }

    private boolean j() {
        return d() == 1;
    }

    private void l() {
        this.f3002a.writeLock().lock();
        try {
            if (this.f3013l == 0) {
                this.f3004c = 0;
            }
            this.f3002a.writeLock().unlock();
            if (d() == 0) {
                this.f3006e.a();
            }
        } catch (Throwable th) {
            this.f3002a.writeLock().unlock();
            throw th;
        }
    }

    public int c() {
        return this.f3012k;
    }

    public int d() {
        this.f3002a.readLock().lock();
        try {
            return this.f3004c;
        } finally {
            this.f3002a.readLock().unlock();
        }
    }

    public boolean i() {
        return this.f3011j;
    }

    public void k() {
        androidx.core.util.h.h(this.f3013l == 1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (j()) {
            return;
        }
        this.f3002a.writeLock().lock();
        try {
            if (this.f3004c == 0) {
                return;
            }
            this.f3004c = 0;
            this.f3002a.writeLock().unlock();
            this.f3006e.a();
        } finally {
            this.f3002a.writeLock().unlock();
        }
    }

    void m(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f3002a.writeLock().lock();
        try {
            this.f3004c = 2;
            arrayList.addAll(this.f3003b);
            this.f3003b.clear();
            this.f3002a.writeLock().unlock();
            this.f3005d.post(new f(arrayList, this.f3004c, th));
        } catch (Throwable th2) {
            this.f3002a.writeLock().unlock();
            throw th2;
        }
    }

    void n() {
        ArrayList arrayList = new ArrayList();
        this.f3002a.writeLock().lock();
        try {
            this.f3004c = 1;
            arrayList.addAll(this.f3003b);
            this.f3003b.clear();
            this.f3002a.writeLock().unlock();
            this.f3005d.post(new f(arrayList, this.f3004c));
        } catch (Throwable th) {
            this.f3002a.writeLock().unlock();
            throw th;
        }
    }

    public CharSequence o(CharSequence charSequence) {
        return p(charSequence, 0, charSequence == null ? 0 : charSequence.length());
    }

    public CharSequence p(CharSequence charSequence, int i10, int i11) {
        return q(charSequence, i10, i11, Integer.MAX_VALUE);
    }

    public CharSequence q(CharSequence charSequence, int i10, int i11, int i12) {
        return r(charSequence, i10, i11, i12, 0);
    }

    public CharSequence r(CharSequence charSequence, int i10, int i11, int i12, int i13) {
        androidx.core.util.h.h(j(), "Not initialized yet");
        androidx.core.util.h.d(i10, "start cannot be negative");
        androidx.core.util.h.d(i11, "end cannot be negative");
        androidx.core.util.h.d(i12, "maxEmojiCount cannot be negative");
        androidx.core.util.h.a(i10 <= i11, "start should be <= than end");
        if (charSequence == null) {
            return null;
        }
        androidx.core.util.h.a(i10 <= charSequence.length(), "start should be < than charSequence length");
        androidx.core.util.h.a(i11 <= charSequence.length(), "end should be < than charSequence length");
        if (charSequence.length() == 0 || i10 == i11) {
            return charSequence;
        }
        return this.f3006e.b(charSequence, i10, i11, i12, i13 != 1 ? i13 != 2 ? this.f3008g : false : true);
    }

    public void s(e eVar) {
        androidx.core.util.h.g(eVar, "initCallback cannot be null");
        this.f3002a.writeLock().lock();
        try {
            if (this.f3004c == 1 || this.f3004c == 2) {
                this.f3005d.post(new f(eVar, this.f3004c));
            } else {
                this.f3003b.add(eVar);
            }
        } finally {
            this.f3002a.writeLock().unlock();
        }
    }

    public void t(e eVar) {
        androidx.core.util.h.g(eVar, "initCallback cannot be null");
        this.f3002a.writeLock().lock();
        try {
            this.f3003b.remove(eVar);
        } finally {
            this.f3002a.writeLock().unlock();
        }
    }

    public void u(EditorInfo editorInfo) {
        if (!j() || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        this.f3006e.c(editorInfo);
    }
}
