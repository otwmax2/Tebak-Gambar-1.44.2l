package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.StrictMode;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import k5.f0;
import k5.x;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ThreadPoolCreation"})
public class ExecutorsRegistrar implements ComponentRegistrar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final x<ScheduledExecutorService> f26279a = new x<>(new k6.b() { // from class: l5.h
        @Override // k6.b
        public final Object get() {
            return ExecutorsRegistrar.p();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final x<ScheduledExecutorService> f26280b = new x<>(new k6.b() { // from class: l5.g
        @Override // k6.b
        public final Object get() {
            return ExecutorsRegistrar.q();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final x<ScheduledExecutorService> f26281c = new x<>(new k6.b() { // from class: l5.f
        @Override // k6.b
        public final Object get() {
            return ExecutorsRegistrar.r();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final x<ScheduledExecutorService> f26282d = new x<>(new k6.b() { // from class: l5.e
        @Override // k6.b
        public final Object get() {
            return ExecutorsRegistrar.s();
        }
    });

    private static StrictMode.ThreadPolicy i() {
        StrictMode.ThreadPolicy.Builder builderDetectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 23) {
            builderDetectNetwork.detectResourceMismatches();
            if (i10 >= 26) {
                builderDetectNetwork.detectUnbufferedIo();
            }
        }
        return builderDetectNetwork.penaltyLog().build();
    }

    private static ThreadFactory j(String str, int i10) {
        return new b(str, i10, null);
    }

    private static ThreadFactory k(String str, int i10, StrictMode.ThreadPolicy threadPolicy) {
        return new b(str, i10, threadPolicy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService l(k5.e eVar) {
        return f26279a.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService m(k5.e eVar) {
        return f26281c.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService n(k5.e eVar) {
        return f26280b.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Executor o(k5.e eVar) {
        return l5.k.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService p() {
        return u(Executors.newFixedThreadPool(4, k("Firebase Background", 10, i())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService q() {
        return u(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), k("Firebase Lite", 0, t())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService r() {
        return u(Executors.newCachedThreadPool(j("Firebase Blocking", 11)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService s() {
        return Executors.newSingleThreadScheduledExecutor(j("Firebase Scheduler", 0));
    }

    private static StrictMode.ThreadPolicy t() {
        return new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build();
    }

    private static ScheduledExecutorService u(ExecutorService executorService) {
        return new o(executorService, f26282d.get());
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<k5.c<?>> getComponents() {
        return Arrays.asList(k5.c.f(f0.a(f5.a.class, ScheduledExecutorService.class), f0.a(f5.a.class, ExecutorService.class), f0.a(f5.a.class, Executor.class)).f(new k5.h() { // from class: l5.d
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return ExecutorsRegistrar.l(eVar);
            }
        }).d(), k5.c.f(f0.a(f5.b.class, ScheduledExecutorService.class), f0.a(f5.b.class, ExecutorService.class), f0.a(f5.b.class, Executor.class)).f(new k5.h() { // from class: l5.a
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return ExecutorsRegistrar.m(eVar);
            }
        }).d(), k5.c.f(f0.a(f5.c.class, ScheduledExecutorService.class), f0.a(f5.c.class, ExecutorService.class), f0.a(f5.c.class, Executor.class)).f(new k5.h() { // from class: l5.c
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return ExecutorsRegistrar.n(eVar);
            }
        }).d(), k5.c.e(f0.a(f5.d.class, Executor.class)).f(new k5.h() { // from class: l5.b
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return ExecutorsRegistrar.o(eVar);
            }
        }).d());
    }
}
