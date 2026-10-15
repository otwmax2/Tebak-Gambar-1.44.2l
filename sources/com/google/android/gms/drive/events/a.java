package com.google.android.gms.drive.events;

import android.os.Looper;
import com.google.android.gms.drive.events.DriveEventService;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
final class a extends Thread {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final /* synthetic */ CountDownLatch f7779o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ DriveEventService f7780p;

    a(DriveEventService driveEventService, CountDownLatch countDownLatch) {
        this.f7780p = driveEventService;
        this.f7779o = countDownLatch;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            Looper.prepare();
            this.f7780p.f7774q = new DriveEventService.a(this.f7780p, null);
            this.f7780p.f7775r = false;
            this.f7779o.countDown();
            Looper.loop();
        } finally {
            if (this.f7780p.f7773p != null) {
                this.f7780p.f7773p.countDown();
            }
        }
    }
}
