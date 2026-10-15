package j8;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import com.tebakgambar.R;

/* JADX INFO: compiled from: NewShareDialog.java */
/* JADX INFO: loaded from: classes2.dex */
public class w0 extends Dialog {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    o8.k0 f30902o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private a f30903p;

    /* JADX INFO: compiled from: NewShareDialog.java */
    public interface a {
        void a();

        void b();

        void c();

        void d();
    }

    public w0(Context context) {
        super(context, R.style.CustomDialog);
        f();
    }

    private void f() {
        requestWindowFeature(1);
        o8.k0 k0Var = (o8.k0) androidx.databinding.g.h(getLayoutInflater(), R.layout.layout_dialog_new_share, null, false);
        this.f30902o = k0Var;
        setContentView(k0Var.S());
        if (!y8.a.d(getContext())) {
            this.f30902o.V.setVisibility(8);
        }
        this.f30902o.U.setOnClickListener(new View.OnClickListener() { // from class: j8.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30876o.g(view);
            }
        });
        this.f30902o.X.setOnClickListener(new View.OnClickListener() { // from class: j8.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30898o.h(view);
            }
        });
        this.f30902o.V.setOnClickListener(new View.OnClickListener() { // from class: j8.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30896o.i(view);
            }
        });
        this.f30902o.W.setOnClickListener(new View.OnClickListener() { // from class: j8.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30878o.j(view);
            }
        });
        this.f30902o.O.setOnClickListener(new View.OnClickListener() { // from class: j8.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30894o.k(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(View view) {
        a aVar = this.f30903p;
        if (aVar != null) {
            aVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(View view) {
        a aVar = this.f30903p;
        if (aVar != null) {
            aVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(View view) {
        a aVar = this.f30903p;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(View view) {
        a aVar = this.f30903p;
        if (aVar != null) {
            aVar.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(View view) {
        dismiss();
    }

    public void l(a aVar) {
        this.f30903p = aVar;
    }
}
