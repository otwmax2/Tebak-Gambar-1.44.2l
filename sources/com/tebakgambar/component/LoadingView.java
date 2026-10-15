package com.tebakgambar.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.tebakgambar.R;

/* JADX INFO: loaded from: classes2.dex */
public class LoadingView extends FrameLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextView f26844o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Button f26845p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private TextView f26846q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private a f26847r;

    public interface a {
        void a();
    }

    public LoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a() {
        setVisibility(0);
        this.f26844o.setVisibility(0);
        this.f26845p.setVisibility(8);
        this.f26846q.setVisibility(8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a aVar = this.f26847r;
        if (aVar != null) {
            aVar.a();
        }
        a();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f26844o = (TextView) findViewById(R.id.progressBarLoading);
        this.f26845p = (Button) findViewById(R.id.buttonRetry);
        this.f26846q = (TextView) findViewById(R.id.textViewErrorMessage);
        this.f26845p.setOnClickListener(this);
    }

    public void setListener(a aVar) {
        this.f26847r = aVar;
    }
}
