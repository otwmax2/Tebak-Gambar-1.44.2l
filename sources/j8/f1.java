package j8;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: ThreeButtonDialog.java */
/* JADX INFO: loaded from: classes2.dex */
public class f1 extends Dialog {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private CustomTextView f30811o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CustomButton f30812p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private CustomButton f30813q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private CustomButton f30814r;

    public f1(Context context) {
        super(context, R.style.CustomDialog);
        g();
    }

    private void g() {
        requestWindowFeature(1);
        setContentView(R.layout.layout_dialog_three_button);
        this.f30811o = (CustomTextView) findViewById(R.id.textViewQuestion);
        this.f30812p = (CustomButton) findViewById(R.id.textViewButton1);
        this.f30813q = (CustomButton) findViewById(R.id.textViewButton2);
        this.f30814r = (CustomButton) findViewById(R.id.textViewButton3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(DialogInterface.OnClickListener onClickListener, View view) {
        onClickListener.onClick(this, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(DialogInterface.OnClickListener onClickListener, View view) {
        onClickListener.onClick(this, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(DialogInterface.OnClickListener onClickListener, View view) {
        onClickListener.onClick(this, 3);
    }

    public f1 d(CharSequence charSequence, final DialogInterface.OnClickListener onClickListener) {
        this.f30812p.setText(charSequence);
        this.f30812p.setOnClickListener(new View.OnClickListener() { // from class: j8.c1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30796o.h(onClickListener, view);
            }
        });
        return this;
    }

    public f1 e(CharSequence charSequence, final DialogInterface.OnClickListener onClickListener) {
        this.f30813q.setText(charSequence);
        this.f30813q.setOnClickListener(new View.OnClickListener() { // from class: j8.d1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30801o.i(onClickListener, view);
            }
        });
        return this;
    }

    public f1 f(CharSequence charSequence, final DialogInterface.OnClickListener onClickListener) {
        this.f30814r.setText(charSequence);
        this.f30814r.setOnClickListener(new View.OnClickListener() { // from class: j8.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30806o.j(onClickListener, view);
            }
        });
        return this;
    }

    public f1 k(CharSequence charSequence) {
        this.f30811o.setText(charSequence);
        this.f30811o.setVisibility(charSequence == null ? 8 : 0);
        return this;
    }
}
