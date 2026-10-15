package com.facebook.bolts;

import ba.q;
import com.vungle.warren.ui.contract.AdContract;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: BoltsExecutors.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BoltsExecutors {
    public static final Companion Companion = new Companion(null);
    private static final BoltsExecutors INSTANCE = new BoltsExecutors();
    private final ExecutorService background;
    private final Executor immediate;
    private final ScheduledExecutorService scheduled;

    /* JADX INFO: compiled from: BoltsExecutors.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isAndroidRuntime() {
            String property = System.getProperty("java.runtime.name");
            if (property == null) {
                return false;
            }
            Locale locale = Locale.US;
            t9.m.d(locale, "US");
            String lowerCase = property.toLowerCase(locale);
            t9.m.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return q.x(lowerCase, "android", false, 2, null);
        }

        public final ExecutorService background() {
            return BoltsExecutors.INSTANCE.background;
        }

        public final Executor immediate$facebook_bolts_release() {
            return BoltsExecutors.INSTANCE.immediate;
        }

        public final ScheduledExecutorService scheduled$facebook_bolts_release() {
            return BoltsExecutors.INSTANCE.scheduled;
        }
    }

    /* JADX INFO: compiled from: BoltsExecutors.kt */
    private static final class ImmediateExecutor implements Executor {
        public static final Companion Companion = new Companion(null);
        private static final int MAX_DEPTH = 15;
        private final ThreadLocal<Integer> executionDepth = new ThreadLocal<>();

        /* JADX INFO: compiled from: BoltsExecutors.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(t9.g gVar) {
                this();
            }
        }

        private final int decrementDepth() {
            Integer num = this.executionDepth.get();
            if (num == null) {
                num = 0;
            }
            int iIntValue = num.intValue() - 1;
            if (iIntValue == 0) {
                this.executionDepth.remove();
            } else {
                this.executionDepth.set(Integer.valueOf(iIntValue));
            }
            return iIntValue;
        }

        private final int incrementDepth() {
            Integer num = this.executionDepth.get();
            if (num == null) {
                num = 0;
            }
            int iIntValue = num.intValue() + 1;
            this.executionDepth.set(Integer.valueOf(iIntValue));
            return iIntValue;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            t9.m.e(runnable, AdContract.AdvertisementBus.COMMAND);
            try {
                if (incrementDepth() <= 15) {
                    runnable.run();
                } else {
                    BoltsExecutors.Companion.background().execute(runnable);
                }
            } finally {
                decrementDepth();
            }
        }
    }

    private BoltsExecutors() {
        ExecutorService executorServiceNewCachedThreadPool;
        if (Companion.isAndroidRuntime()) {
            executorServiceNewCachedThreadPool = AndroidExecutors.Companion.newCachedThreadPool();
        } else {
            executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
            t9.m.d(executorServiceNewCachedThreadPool, "newCachedThreadPool()");
        }
        this.background = executorServiceNewCachedThreadPool;
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        t9.m.d(scheduledExecutorServiceNewSingleThreadScheduledExecutor, "newSingleThreadScheduledExecutor()");
        this.scheduled = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.immediate = new ImmediateExecutor();
    }

    public static final ExecutorService background() {
        return Companion.background();
    }
}
