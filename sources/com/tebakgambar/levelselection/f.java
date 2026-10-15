package com.tebakgambar.levelselection;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tebakgambar.R;
import com.tebakgambar.database.TGDatabase;
import com.tebakgambar.model.Level;
import com.tebakgambar.service.TGDownloadService;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: LevelLoadingViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends androidx.lifecycle.a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public androidx.databinding.m<String> f26932s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public androidx.databinding.m<String> f26933t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    androidx.lifecycle.t<i8.a> f26934u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    androidx.lifecycle.t<Boolean> f26935v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public androidx.databinding.m<Level> f26936w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    b f26937x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int f26938y;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: LevelLoadingViewModel.java */
    class b extends BroadcastReceiver {
        private b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            f.this.f26934u.n(new i8.a(f.this.f26936w.y(), intent));
        }
    }

    public f(Application application) {
        super(application);
        this.f26932s = new androidx.databinding.m<>();
        this.f26933t = new androidx.databinding.m<>();
        this.f26934u = new androidx.lifecycle.t<>();
        this.f26935v = new androidx.lifecycle.t<>();
        this.f26936w = new androidx.databinding.m<>();
        this.f26937x = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean o() throws Exception {
        return Boolean.valueOf(!TGDatabase.C().E().d(this.f26938y).isNeedToUpdate());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t1.h p(t1.h hVar) throws Exception {
        if (!((Boolean) hVar.s()).booleanValue()) {
            return null;
        }
        this.f26935v.n((Boolean) hVar.s());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object q(int i10) throws Exception {
        this.f26936w.z(Level.fromId(i10));
        this.f26932s.z(this.f26936w.y().quotes);
        TGDownloadService.v(j(), this.f26936w.y());
        return null;
    }

    void n() {
        t1.h.d(new Callable() { // from class: com.tebakgambar.levelselection.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f26922a.o();
            }
        }).A(new t1.f() { // from class: com.tebakgambar.levelselection.e
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f26930a.p(hVar);
            }
        }, t1.h.f35199k);
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1095)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1049)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    void r() {
        int iCurrentTimeMillis = ((int) (System.currentTimeMillis() % 4000)) / 1000;
        StringBuilder sb = new StringBuilder(j().getString(R.string.label_level_loading_title, new Object[]{Integer.valueOf(this.f26938y)}));
        for (int i10 = 0; i10 < 3; i10++) {
            if (i10 < iCurrentTimeMillis) {
                sb.append(".");
            } else {
                sb.append(" ");
            }
        }
        this.f26933t.z(sb.toString());
    }

    void s(final int i10) {
        this.f26938y = i10;
        t1.h.d(new Callable() { // from class: com.tebakgambar.levelselection.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f26927a.q(i10);
            }
        });
    }
}
