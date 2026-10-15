package com.twitter.sdk.android.core;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: TwitterConfig.java */
/* JADX INFO: loaded from: classes.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f27504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final h f27505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final r f27506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final ExecutorService f27507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Boolean f27508e;

    /* JADX INFO: compiled from: TwitterConfig.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f27509a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private h f27510b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private r f27511c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ExecutorService f27512d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Boolean f27513e;

        public b(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null.");
            }
            this.f27509a = context.getApplicationContext();
        }

        public u a() {
            return new u(this.f27509a, this.f27510b, this.f27511c, this.f27512d, this.f27513e);
        }

        public b b(boolean z10) {
            this.f27513e = Boolean.valueOf(z10);
            return this;
        }

        public b c(r rVar) {
            if (rVar == null) {
                throw new IllegalArgumentException("TwitterAuthConfig must not be null.");
            }
            this.f27511c = rVar;
            return this;
        }
    }

    private u(Context context, h hVar, r rVar, ExecutorService executorService, Boolean bool) {
        this.f27504a = context;
        this.f27505b = hVar;
        this.f27506c = rVar;
        this.f27507d = executorService;
        this.f27508e = bool;
    }
}
