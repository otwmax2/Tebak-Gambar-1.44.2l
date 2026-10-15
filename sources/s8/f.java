package s8;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.lifecycle.k0;
import androidx.lifecycle.u;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.tebakgambar.R;
import g5.s;
import j8.x;
import java.lang.ref.WeakReference;
import o8.a0;

/* JADX INFO: compiled from: FirebaseLoginDialogFragment.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends androidx.fragment.app.d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private a0 f35025o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private i f35026p;

    /* JADX INFO: compiled from: FirebaseLoginDialogFragment.java */
    public interface a {
        void a(s sVar);

        String b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(Boolean bool) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(View view) {
        this.f35026p.x();
        y8.a.f(getActivity(), Uri.parse("http://tebakgambar.com/privacy-policy/"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(Boolean bool) {
        this.f35025o.P.setVisibility(!bool.booleanValue() ? 0 : 8);
        this.f35025o.Q.setClickable(!bool.booleanValue());
        this.f35025o.Q.setVisibility(!bool.booleanValue() ? 0 : 4);
        this.f35025o.U.setVisibility(bool.booleanValue() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(String str) {
        Toast.makeText(getActivity(), str, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(Intent intent) {
        startActivityForResult(intent, 8010);
    }

    @Override // androidx.fragment.app.d
    public int getTheme() {
        return R.style.CustomDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f35026p.f35037y = (a) k0.b(getActivity()).b("activityViewModel", x.class);
        this.f35026p.r();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 != 8010 || i11 != -1) {
            this.f35026p.A.onActivityResult(i10, i11, intent);
        } else {
            this.f35026p.w(GoogleSignIn.c(intent));
        }
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        i iVar = (i) k0.a(this).a(i.class);
        this.f35026p = iVar;
        iVar.f35036x = new WeakReference<>(this);
        this.f35026p.f35034v.h(this, new u() { // from class: s8.d
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35023a.t((Boolean) obj);
            }
        });
        this.f35026p.f35033u.h(this, new u() { // from class: s8.e
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35024a.w((String) obj);
            }
        });
        this.f35026p.f35035w.h(this, new u() { // from class: s8.c
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35022a.v((Boolean) obj);
            }
        });
        this.f35026p.f35032t.h(this, new u() { // from class: s8.b
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35021a.x((Intent) obj);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        a0 a0Var = (a0) androidx.databinding.g.h(layoutInflater, R.layout.dialog_firebase_login, viewGroup, false);
        this.f35025o = a0Var;
        a0Var.V.setOnClickListener(new View.OnClickListener() { // from class: s8.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f35020o.u(view);
            }
        });
        this.f35025o.u0(this.f35026p);
        return this.f35025o.S();
    }

    @Override // androidx.fragment.app.d, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        this.f35026p.t();
    }
}
