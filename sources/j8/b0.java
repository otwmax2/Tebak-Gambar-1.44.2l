package j8;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomImageView;

/* JADX INFO: compiled from: CustomDialogPromote.java */
/* JADX INFO: loaded from: classes2.dex */
public class b0 extends Dialog implements View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public CustomImageView f30767o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CustomButton f30768p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CustomButton f30769q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    a f30770r;

    /* JADX INFO: compiled from: CustomDialogPromote.java */
    public interface a {
        void a();

        void b();

        void c();
    }

    public b0(Context context, int i10) {
        super(context, i10);
        requestWindowFeature(1);
        setContentView(R.layout.layout_dialog_promote);
        this.f30767o = (CustomImageView) findViewById(R.id.imageViewPromote);
        this.f30768p = (CustomButton) findViewById(R.id.textViewDecline);
        this.f30769q = (CustomButton) findViewById(R.id.textViewAccept);
        this.f30767o.setOnClickListener(this);
        this.f30768p.setOnClickListener(this);
        this.f30769q.setOnClickListener(this);
        setCanceledOnTouchOutside(false);
    }

    public void a(a aVar) {
        this.f30770r = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f30768p) {
            this.f30770r.b();
        } else if (view == this.f30769q) {
            this.f30770r.a();
        } else if (view == this.f30767o) {
            this.f30770r.c();
        }
    }
}
