package com.tebakgambar.selfie;

import android.app.Application;
import com.tebakgambar.database.TGDatabase;
import com.tebakgambar.selfie.h;
import java.util.concurrent.Callable;
import y8.y;

/* JADX INFO: compiled from: SelfieFrameChooserViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class i extends androidx.lifecycle.a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    h.e f27167s;

    public i(Application application) {
        super(application);
        h.e eVar = new h.e();
        this.f27167s = eVar;
        eVar.f27165a.z(y.s(application));
        t1.h.d(new Callable() { // from class: u8.j
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f35644a.l();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void l() throws Exception {
        this.f27167s.f27166b.addAll(TGDatabase.C().E().f());
        return null;
    }
}
