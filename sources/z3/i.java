package z3;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: compiled from: MotionTiming.java */
/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f37214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f37215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TimeInterpolator f37216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f37217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37218e;

    public i(long j10, long j11) {
        this.f37214a = 0L;
        this.f37215b = 300L;
        this.f37216c = null;
        this.f37217d = 0;
        this.f37218e = 1;
        this.f37214a = j10;
        this.f37215b = j11;
    }

    static i b(ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), f(valueAnimator));
        iVar.f37217d = valueAnimator.getRepeatCount();
        iVar.f37218e = valueAnimator.getRepeatMode();
        return iVar;
    }

    private static TimeInterpolator f(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        return ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) ? a.f37200b : interpolator instanceof AccelerateInterpolator ? a.f37201c : interpolator instanceof DecelerateInterpolator ? a.f37202d : interpolator;
    }

    public void a(Animator animator) {
        animator.setStartDelay(c());
        animator.setDuration(d());
        animator.setInterpolator(e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(g());
            valueAnimator.setRepeatMode(h());
        }
    }

    public long c() {
        return this.f37214a;
    }

    public long d() {
        return this.f37215b;
    }

    public TimeInterpolator e() {
        TimeInterpolator timeInterpolator = this.f37216c;
        return timeInterpolator != null ? timeInterpolator : a.f37200b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (c() == iVar.c() && d() == iVar.d() && g() == iVar.g() && h() == iVar.h()) {
            return e().getClass().equals(iVar.e().getClass());
        }
        return false;
    }

    public int g() {
        return this.f37217d;
    }

    public int h() {
        return this.f37218e;
    }

    public int hashCode() {
        return (((((((((int) (c() ^ (c() >>> 32))) * 31) + ((int) (d() ^ (d() >>> 32)))) * 31) + e().getClass().hashCode()) * 31) + g()) * 31) + h();
    }

    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + c() + " duration: " + d() + " interpolator: " + e().getClass() + " repeatCount: " + g() + " repeatMode: " + h() + "}\n";
    }

    public i(long j10, long j11, TimeInterpolator timeInterpolator) {
        this.f37214a = 0L;
        this.f37215b = 300L;
        this.f37216c = null;
        this.f37217d = 0;
        this.f37218e = 1;
        this.f37214a = j10;
        this.f37215b = j11;
        this.f37216c = timeInterpolator;
    }
}
