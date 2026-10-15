package j8;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.ImageView;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: OneButtonDialog.java */
/* JADX INFO: loaded from: classes2.dex */
public class b1 extends Dialog {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private CustomTextView f30771o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CustomTextView f30772p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private CustomButton f30773q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ImageView f30774r;

    public b1(Context context) {
        super(context, R.style.CustomDialog);
        d();
    }

    private void d() {
        requestWindowFeature(1);
        setContentView(R.layout.dialog_one_button);
        this.f30772p = (CustomTextView) findViewById(R.id.textViewJudulPertanyaan);
        this.f30771o = (CustomTextView) findViewById(R.id.textViewQuestion);
        this.f30773q = (CustomButton) findViewById(R.id.textViewButton1);
        this.f30774r = (ImageView) findViewById(R.id.imageViewClose);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(DialogInterface.OnClickListener onClickListener, View view) {
        onClickListener.onClick(this, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(DialogInterface.OnClickListener onClickListener, View view) {
        onClickListener.onClick(this, 3);
    }

    public b1 c(CharSequence charSequence, final DialogInterface.OnClickListener onClickListener) {
        this.f30773q.setText(charSequence);
        this.f30773q.setOnClickListener(new View.OnClickListener() { // from class: j8.a1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30757o.e(onClickListener, view);
            }
        });
        return this;
    }

    public b1 g(CharSequence charSequence) {
        this.f30771o.setText(charSequence);
        return this;
    }

    public b1 h(final DialogInterface.OnClickListener onClickListener) {
        this.f30774r.setVisibility(0);
        this.f30774r.setOnClickListener(new View.OnClickListener() { // from class: j8.z0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30929o.f(onClickListener, view);
            }
        });
        return this;
    }
}
