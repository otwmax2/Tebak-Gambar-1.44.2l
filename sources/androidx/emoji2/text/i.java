package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.os.Handler;
import androidx.core.provider.g;
import androidx.emoji2.text.d;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: compiled from: FontRequestEmojiCompatConfig.java */
/* JADX INFO: loaded from: classes.dex */
public class i extends d.c {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final a f3058j = new a();

    /* JADX INFO: compiled from: FontRequestEmojiCompatConfig.java */
    public static class a {
        public Typeface a(Context context, g.b bVar) throws PackageManager.NameNotFoundException {
            return androidx.core.provider.g.a(context, null, new g.b[]{bVar});
        }

        public g.a b(Context context, androidx.core.provider.e eVar) throws PackageManager.NameNotFoundException {
            return androidx.core.provider.g.b(context, null, eVar);
        }

        public void c(Context context, ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: FontRequestEmojiCompatConfig.java */
    static class b implements d.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f3059a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.core.provider.e f3060b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final a f3061c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Object f3062d = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Handler f3063e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Executor f3064f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ThreadPoolExecutor f3065g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        d.h f3066h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private ContentObserver f3067i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Runnable f3068j;

        b(Context context, androidx.core.provider.e eVar, a aVar) {
            androidx.core.util.h.g(context, "Context cannot be null");
            androidx.core.util.h.g(eVar, "FontRequest cannot be null");
            this.f3059a = context.getApplicationContext();
            this.f3060b = eVar;
            this.f3061c = aVar;
        }

        private void b() {
            synchronized (this.f3062d) {
                this.f3066h = null;
                ContentObserver contentObserver = this.f3067i;
                if (contentObserver != null) {
                    this.f3061c.c(this.f3059a, contentObserver);
                    this.f3067i = null;
                }
                Handler handler = this.f3063e;
                if (handler != null) {
                    handler.removeCallbacks(this.f3068j);
                }
                this.f3063e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f3065g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f3064f = null;
                this.f3065g = null;
            }
        }

        private g.b e() {
            try {
                g.a aVarB = this.f3061c.b(this.f3059a, this.f3060b);
                if (aVarB.c() == 0) {
                    g.b[] bVarArrB = aVarB.b();
                    if (bVarArrB == null || bVarArrB.length == 0) {
                        throw new RuntimeException("fetchFonts failed (empty result)");
                    }
                    return bVarArrB[0];
                }
                throw new RuntimeException("fetchFonts failed (" + aVarB.c() + ")");
            } catch (PackageManager.NameNotFoundException e10) {
                throw new RuntimeException("provider not found", e10);
            }
        }

        @Override // androidx.emoji2.text.d.g
        public void a(d.h hVar) {
            androidx.core.util.h.g(hVar, "LoaderCallback cannot be null");
            synchronized (this.f3062d) {
                this.f3066h = hVar;
            }
            d();
        }

        void c() {
            synchronized (this.f3062d) {
                if (this.f3066h == null) {
                    return;
                }
                try {
                    g.b bVarE = e();
                    int iB = bVarE.b();
                    if (iB == 2) {
                        synchronized (this.f3062d) {
                        }
                    }
                    if (iB != 0) {
                        throw new RuntimeException("fetchFonts result is not OK. (" + iB + ")");
                    }
                    try {
                        androidx.core.os.m.a("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                        Typeface typefaceA = this.f3061c.a(this.f3059a, bVarE);
                        ByteBuffer byteBufferF = androidx.core.graphics.l.f(this.f3059a, null, bVarE.d());
                        if (byteBufferF == null || typefaceA == null) {
                            throw new RuntimeException("Unable to open file.");
                        }
                        l lVarB = l.b(typefaceA, byteBufferF);
                        androidx.core.os.m.b();
                        synchronized (this.f3062d) {
                            d.h hVar = this.f3066h;
                            if (hVar != null) {
                                hVar.b(lVarB);
                            }
                        }
                        b();
                    } catch (Throwable th) {
                        androidx.core.os.m.b();
                        throw th;
                    }
                } catch (Throwable th2) {
                    synchronized (this.f3062d) {
                        d.h hVar2 = this.f3066h;
                        if (hVar2 != null) {
                            hVar2.a(th2);
                        }
                        b();
                    }
                }
            }
        }

        void d() {
            synchronized (this.f3062d) {
                if (this.f3066h == null) {
                    return;
                }
                if (this.f3064f == null) {
                    ThreadPoolExecutor threadPoolExecutorB = androidx.emoji2.text.b.b("emojiCompat");
                    this.f3065g = threadPoolExecutorB;
                    this.f3064f = threadPoolExecutorB;
                }
                this.f3064f.execute(new Runnable() { // from class: androidx.emoji2.text.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3069o.c();
                    }
                });
            }
        }

        public void f(Executor executor) {
            synchronized (this.f3062d) {
                this.f3064f = executor;
            }
        }
    }

    public i(Context context, androidx.core.provider.e eVar) {
        super(new b(context, eVar, f3058j));
    }

    public i c(Executor executor) {
        ((b) a()).f(executor);
        return this;
    }
}
