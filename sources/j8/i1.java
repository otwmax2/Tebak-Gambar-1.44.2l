package j8;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: TwoButtonDialog.java */
/* JADX INFO: loaded from: classes2.dex */
public class i1 extends Dialog {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private CustomTextView f30831o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CustomTextView f30832p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private CustomButton f30833q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private CustomButton f30834r;

    public i1(Context context) {
        super(context, R.style.CustomDialog);
        e();
    }

    private void e() {
        requestWindowFeature(1);
        setContentView(R.layout.layout_dialog_two_button);
        this.f30832p = (CustomTextView) findViewById(R.id.textViewJudulPertanyaan);
        this.f30831o = (CustomTextView) findViewById(R.id.textViewQuestion);
        this.f30833q = (CustomButton) findViewById(R.id.textViewButton1);
        this.f30834r = (CustomButton) findViewById(R.id.textViewButton2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(DialogInterface.OnClickListener onClickListener, View view) {
        onClickListener.onClick(this, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(DialogInterface.OnClickListener onClickListener, View view) {
        onClickListener.onClick(this, 2);
    }

    public i1 c(CharSequence charSequence, final DialogInterface.OnClickListener onClickListener) {
        this.f30833q.setText(charSequence);
        this.f30833q.setOnClickListener(new View.OnClickListener() { // from class: j8.g1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30818o.f(onClickListener, view);
            }
        });
        return this;
    }

    public i1 d(CharSequence charSequence, final DialogInterface.OnClickListener onClickListener) {
        this.f30834r.setText(charSequence);
        this.f30834r.setOnClickListener(new View.OnClickListener() { // from class: j8.h1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30826o.g(onClickListener, view);
            }
        });
        return this;
    }

    public i1 h(CharSequence charSequence) {
        this.f30831o.setText(charSequence);
        return this;
    }

    public i1 i(CharSequence charSequence) {
        this.f30832p.setVisibility(0);
        this.f30832p.setText(charSequence);
        return this;
    }
}
