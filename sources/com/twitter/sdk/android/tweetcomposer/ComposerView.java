package com.twitter.sdk.android.tweetcomposer;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import c9.l;
import com.twitter.sdk.android.tweetcomposer.a;
import com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView;
import f8.t;
import f9.p;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class ComposerView extends LinearLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ImageView f27531o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ImageView f27532p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    EditText f27533q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    TextView f27534r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    Button f27535s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    ObservableScrollView f27536t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    View f27537u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    ColorDrawable f27538v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    ImageView f27539w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    a.b f27540x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private t f27541y;

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ComposerView composerView = ComposerView.this;
            composerView.f27540x.b(composerView.getTweetText());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public ComposerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        f(context);
    }

    private void f(Context context) {
        this.f27541y = t.o(getContext());
        this.f27538v = new ColorDrawable(context.getResources().getColor(g.f27561a));
        LinearLayout.inflate(context, i.f27572b, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(View view) {
        this.f27540x.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(View view) {
        this.f27540x.c(getTweetText());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean i(TextView textView, int i10, KeyEvent keyEvent) {
        this.f27540x.c(getTweetText());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(int i10) {
        if (i10 > 0) {
            this.f27537u.setVisibility(0);
        } else {
            this.f27537u.setVisibility(4);
        }
    }

    void e() {
        this.f27531o = (ImageView) findViewById(h.f27562a);
        this.f27532p = (ImageView) findViewById(h.f27564c);
        this.f27533q = (EditText) findViewById(h.f27568g);
        this.f27534r = (TextView) findViewById(h.f27563b);
        this.f27535s = (Button) findViewById(h.f27570i);
        this.f27536t = (ObservableScrollView) findViewById(h.f27566e);
        this.f27537u = findViewById(h.f27565d);
        this.f27539w = (ImageView) findViewById(h.f27569h);
    }

    String getTweetText() {
        return this.f27533q.getText().toString();
    }

    void k(boolean z10) {
        this.f27535s.setEnabled(z10);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        e();
        this.f27532p.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetcomposer.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f27558o.g(view);
            }
        });
        this.f27535s.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetcomposer.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f27557o.h(view);
            }
        });
        this.f27533q.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.twitter.sdk.android.tweetcomposer.d
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                return this.f27559a.i(textView, i10, keyEvent);
            }
        });
        this.f27533q.addTextChangedListener(new a());
        this.f27536t.setScrollViewListener(new ObservableScrollView.a() { // from class: com.twitter.sdk.android.tweetcomposer.e
            @Override // com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView.a
            public final void a(int i10) {
                this.f27560a.j(i10);
            }
        });
    }

    void setCallbacks(a.b bVar) {
        this.f27540x = bVar;
    }

    void setCharCount(int i10) {
        this.f27534r.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i10)));
    }

    void setCharCountTextStyle(int i10) {
        this.f27534r.setTextAppearance(getContext(), i10);
    }

    void setImageView(Uri uri) {
        if (this.f27541y != null) {
            this.f27539w.setVisibility(0);
            this.f27541y.i(uri).c(this.f27539w);
        }
    }

    void setProfilePhotoView(p pVar) {
        String strA = l.a(pVar, l.b.REASONABLY_SMALL);
        t tVar = this.f27541y;
        if (tVar != null) {
            tVar.j(strA).e(this.f27538v).c(this.f27531o);
        }
    }

    void setTweetText(String str) {
        this.f27533q.setText(str);
    }
}
