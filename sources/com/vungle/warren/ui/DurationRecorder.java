package com.vungle.warren.ui;

import com.vungle.warren.model.Report;
import com.vungle.warren.persistence.Repository;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class DurationRecorder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Report f28381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Repository f28382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Repository.SaveCallback f28383c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicBoolean f28384d = new AtomicBoolean(true);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f28385e;

    public DurationRecorder(Report report, Repository repository, Repository.SaveCallback saveCallback) {
        this.f28381a = report;
        this.f28382b = repository;
        this.f28383c = saveCallback;
    }

    private void a() {
        this.f28381a.setAdDuration(System.currentTimeMillis() - this.f28385e);
        this.f28382b.save(this.f28381a, this.f28383c);
    }

    public void start() {
        if (this.f28384d.getAndSet(false)) {
            this.f28385e = System.currentTimeMillis() - this.f28381a.getAdDuration();
        }
    }

    public void stop() {
        if (this.f28384d.getAndSet(true)) {
            return;
        }
        a();
    }

    public void update() {
        if (this.f28384d.get()) {
            return;
        }
        a();
    }
}
