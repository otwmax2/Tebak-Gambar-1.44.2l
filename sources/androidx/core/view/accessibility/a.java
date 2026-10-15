package androidx.core.view.accessibility;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: compiled from: AccessibilityClickableSpanCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f2418o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final c f2419p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f2420q;

    public a(int i10, c cVar, int i11) {
        this.f2418o = i10;
        this.f2419p = cVar;
        this.f2420q = i11;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f2418o);
        this.f2419p.O(this.f2420q, bundle);
    }
}
