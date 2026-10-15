package com.tebakgambar.component;

import android.os.Handler;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: compiled from: TGTicker.java */
/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static b f26856f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f26859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Runnable f26860d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TimerTask f26861e = new C0130b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f26858b = new Handler();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<c> f26857a = new ArrayList();

    /* JADX INFO: compiled from: TGTicker.java */
    /* JADX INFO: loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            b.this.f26859c = jCurrentTimeMillis;
            for (int i10 = 0; i10 < b.this.f26857a.size(); i10++) {
                ((c) b.this.f26857a.get(i10)).e(jCurrentTimeMillis);
            }
        }
    }

    /* JADX INFO: renamed from: com.tebakgambar.component.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TGTicker.java */
    /* JADX INFO: loaded from: classes2.dex */
    class C0130b extends TimerTask {
        C0130b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            b.this.f26858b.post(b.this.f26860d);
        }
    }

    /* JADX INFO: compiled from: TGTicker.java */
    public interface c {
        void e(long j10);
    }

    private b(long j10) {
        Timer timer = new Timer();
        this.f26859c = System.currentTimeMillis();
        timer.scheduleAtFixedRate(this.f26861e, 0L, j10);
    }

    public static b f() {
        if (f26856f == null) {
            f26856f = new b(1000L);
        }
        return f26856f;
    }

    public void e(c cVar) {
        this.f26857a.add(cVar);
    }

    public void g(c cVar) {
        this.f26857a.remove(cVar);
    }
}
