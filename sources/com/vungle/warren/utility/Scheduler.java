package com.vungle.warren.utility;

/* JADX INFO: loaded from: classes2.dex */
public interface Scheduler {
    void cancel(String str);

    void cancelAll();

    void schedule(Runnable runnable, long j10);

    void schedule(Runnable runnable, String str, long j10);
}
