package y8;

import android.view.View;

/* JADX INFO: compiled from: OnSingleClickListener.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class m implements View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f37056o;

    /* JADX INFO: compiled from: OnSingleClickListener.java */
    class a extends m {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ View.OnClickListener f37057p;

        a(View.OnClickListener onClickListener) {
            this.f37057p = onClickListener;
        }

        @Override // y8.m
        public void a(View view) {
            this.f37057p.onClick(view);
        }
    }

    public static View.OnClickListener b(View.OnClickListener onClickListener) {
        return new a(onClickListener);
    }

    public abstract void a(View view);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        long j10 = this.f37056o;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f37056o = jCurrentTimeMillis;
        if (jCurrentTimeMillis - j10 < 500) {
            return;
        }
        a(view);
    }
}
