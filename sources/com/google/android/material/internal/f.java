package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import java.util.ArrayList;

/* JADX INFO: compiled from: StateListAnimator.java */
/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<b> f25536a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f25537b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ValueAnimator f25538c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Animator.AnimatorListener f25539d = new a();

    /* JADX INFO: compiled from: StateListAnimator.java */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f fVar = f.this;
            if (fVar.f25538c == animator) {
                fVar.f25538c = null;
            }
        }
    }

    /* JADX INFO: compiled from: StateListAnimator.java */
    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int[] f25541a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ValueAnimator f25542b;

        b(int[] iArr, ValueAnimator valueAnimator) {
            this.f25541a = iArr;
            this.f25542b = valueAnimator;
        }
    }

    private void b() {
        ValueAnimator valueAnimator = this.f25538c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f25538c = null;
        }
    }

    private void e(b bVar) {
        ValueAnimator valueAnimator = bVar.f25542b;
        this.f25538c = valueAnimator;
        valueAnimator.start();
    }

    public void a(int[] iArr, ValueAnimator valueAnimator) {
        b bVar = new b(iArr, valueAnimator);
        valueAnimator.addListener(this.f25539d);
        this.f25536a.add(bVar);
    }

    public void c() {
        ValueAnimator valueAnimator = this.f25538c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f25538c = null;
        }
    }

    public void d(int[] iArr) {
        b bVar;
        int size = this.f25536a.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                bVar = null;
                break;
            }
            bVar = this.f25536a.get(i10);
            if (StateSet.stateSetMatches(bVar.f25541a, iArr)) {
                break;
            } else {
                i10++;
            }
        }
        b bVar2 = this.f25537b;
        if (bVar == bVar2) {
            return;
        }
        if (bVar2 != null) {
            b();
        }
        this.f25537b = bVar;
        if (bVar != null) {
            e(bVar);
        }
    }
}
