package j8;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: FourButtonDialog.java */
/* JADX INFO: loaded from: classes2.dex */
public class h0 extends Dialog {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private CustomTextView f30821o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CustomButton f30822p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private CustomButton f30823q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private CustomButton f30824r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CustomButton f30825s;

    public h0(Context context) {
        super(context, R.style.CustomDialog);
        i();
    }

    private void i() {
        requestWindowFeature(1);
        setContentView(R.layout.layout_dialog_four_button);
        this.f30821o = (CustomTextView) findViewById(R.id.textViewQuestion);
        this.f30822p = (CustomButton) findViewById(R.id.textViewButton1);
        this.f30823q = (CustomButton) findViewById(R.id.textViewButton2);
        this.f30824r = (CustomButton) findViewById(R.id.textViewButton3);
        this.f30825s = (CustomButton) findViewById(R.id.textViewButton4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(DialogInterface.OnClickListener onClickListener, View view) {
        onClickListener.onClick(this, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(DialogInterface.OnClickListener onClickListener, View view) {
        onClickListener.onClick(this, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(DialogInterface.OnClickListener onClickListener, View view) {
        onClickListener.onClick(this, 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(DialogInterface.OnClickListener onClickListener, View view) {
        onClickListener.onClick(this, 4);
    }

    public h0 e(CharSequence charSequence, final DialogInterface.OnClickListener onClickListener) {
        this.f30822p.setText(charSequence);
        this.f30822p.setOnClickListener(new View.OnClickListener() { // from class: j8.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30809o.j(onClickListener, view);
            }
        });
        return this;
    }

    public h0 f(CharSequence charSequence, final DialogInterface.OnClickListener onClickListener) {
        this.f30823q.setText(charSequence);
        this.f30823q.setOnClickListener(new View.OnClickListener() { // from class: j8.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30804o.k(onClickListener, view);
            }
        });
        return this;
    }

    public h0 g(CharSequence charSequence, final DialogInterface.OnClickListener onClickListener) {
        this.f30824r.setText(charSequence);
        this.f30824r.setOnClickListener(new View.OnClickListener() { // from class: j8.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30816o.l(onClickListener, view);
            }
        });
        return this;
    }

    public h0 h(CharSequence charSequence, final DialogInterface.OnClickListener onClickListener) {
        this.f30825s.setText(charSequence);
        this.f30825s.setOnClickListener(new View.OnClickListener() { // from class: j8.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30799o.m(onClickListener, view);
            }
        });
        return this;
    }

    public h0 n(CharSequence charSequence) {
        this.f30821o.setText(charSequence);
        return this;
    }
}
