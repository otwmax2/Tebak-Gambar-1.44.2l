package com.twitter.sdk.android.tweetcomposer.internal.util;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes2.dex */
public class ObservableScrollView extends ScrollView {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    a f27573o;

    public interface a {
        void a(int i10);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        a aVar = this.f27573o;
        if (aVar != null) {
            aVar.a(i11);
        }
    }

    public void setScrollViewListener(a aVar) {
        this.f27573o = aVar;
    }
}
