package j8;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;

/* JADX INFO: compiled from: CustomDialogChoosePhoto.java */
/* JADX INFO: loaded from: classes2.dex */
public class y extends Dialog implements View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Context f30914o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    CustomButton f30915p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    CustomButton f30916q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    CustomButton f30917r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    a f30918s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    String[] f30919t;

    /* JADX INFO: compiled from: CustomDialogChoosePhoto.java */
    public interface a {
        void a();

        void b();

        void c();
    }

    public y(Context context, int i10) {
        super(context, i10);
        this.f30914o = context;
        a();
    }

    private void a() {
        requestWindowFeature(1);
        setContentView(R.layout.layout_dialog_choose_photo);
        setCanceledOnTouchOutside(false);
        this.f30915p = (CustomButton) findViewById(R.id.buttonFoto);
        this.f30916q = (CustomButton) findViewById(R.id.buttonGaleri);
        CustomButton customButton = (CustomButton) findViewById(R.id.buttonLeaderboard);
        this.f30917r = customButton;
        String[] strArr = this.f30919t;
        if (strArr == null) {
            customButton.setVisibility(8);
        } else if (strArr.length > 2) {
            customButton.setVisibility(0);
            this.f30917r.setOnClickListener(this);
            this.f30917r.setText(this.f30919t[0]);
            this.f30915p.setText(this.f30919t[1]);
            this.f30916q.setText(this.f30919t[2]);
        } else {
            customButton.setVisibility(8);
            this.f30915p.setText(this.f30919t[1]);
            this.f30916q.setText(this.f30919t[2]);
        }
        this.f30915p.setOnClickListener(this);
        this.f30916q.setOnClickListener(this);
    }

    public void b(a aVar) {
        this.f30918s = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f30915p) {
            this.f30918s.a();
        } else if (view == this.f30916q) {
            this.f30918s.b();
        } else if (view == this.f30917r) {
            this.f30918s.c();
        }
    }
}
