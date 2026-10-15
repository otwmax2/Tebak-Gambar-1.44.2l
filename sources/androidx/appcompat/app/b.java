package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AlertController;

/* JADX INFO: compiled from: AlertDialog.java */
/* JADX INFO: loaded from: classes.dex */
public class b extends j {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final AlertController f339s;

    /* JADX INFO: compiled from: AlertDialog.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AlertController.f f340a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f341b;

        public a(Context context) {
            this(context, b.j(context, 0));
        }

        public b a() {
            b bVar = new b(this.f340a.f299a, this.f341b);
            this.f340a.a(bVar.f339s);
            bVar.setCancelable(this.f340a.f316r);
            if (this.f340a.f316r) {
                bVar.setCanceledOnTouchOutside(true);
            }
            bVar.setOnCancelListener(this.f340a.f317s);
            bVar.setOnDismissListener(this.f340a.f318t);
            DialogInterface.OnKeyListener onKeyListener = this.f340a.f319u;
            if (onKeyListener != null) {
                bVar.setOnKeyListener(onKeyListener);
            }
            return bVar;
        }

        public Context b() {
            return this.f340a.f299a;
        }

        public a c(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.f340a;
            fVar.f321w = listAdapter;
            fVar.f322x = onClickListener;
            return this;
        }

        public a d(View view) {
            this.f340a.f305g = view;
            return this;
        }

        public a e(Drawable drawable) {
            this.f340a.f302d = drawable;
            return this;
        }

        public a f(DialogInterface.OnKeyListener onKeyListener) {
            this.f340a.f319u = onKeyListener;
            return this;
        }

        public a g(ListAdapter listAdapter, int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.f340a;
            fVar.f321w = listAdapter;
            fVar.f322x = onClickListener;
            fVar.I = i10;
            fVar.H = true;
            return this;
        }

        public a h(CharSequence charSequence) {
            this.f340a.f304f = charSequence;
            return this;
        }

        public a(Context context, int i10) {
            this.f340a = new AlertController.f(new ContextThemeWrapper(context, b.j(context, i10)));
            this.f341b = i10;
        }
    }

    protected b(Context context, int i10) {
        super(context, j(context, i10));
        this.f339s = new AlertController(getContext(), this, getWindow());
    }

    static int j(Context context, int i10) {
        if (((i10 >>> 24) & 255) >= 1) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(f.a.f28991o, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView i() {
        return this.f339s.d();
    }

    @Override // androidx.appcompat.app.j, androidx.activity.f, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f339s.e();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (this.f339s.g(i10, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (this.f339s.h(i10, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i10, keyEvent);
    }

    @Override // androidx.appcompat.app.j, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f339s.q(charSequence);
    }
}
