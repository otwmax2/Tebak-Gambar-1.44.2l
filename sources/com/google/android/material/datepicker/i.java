package com.google.android.material.datepicker;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.a0;
import androidx.fragment.app.w;
import com.google.android.material.datepicker.a;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: MaterialDatePicker.java */
/* JADX INFO: loaded from: classes2.dex */
public final class i<S> extends androidx.fragment.app.d {
    static final Object F = "CONFIRM_BUTTON_TAG";
    static final Object G = "CANCEL_BUTTON_TAG";
    static final Object H = "TOGGLE_BUTTON_TAG";
    private int A;
    private TextView B;
    private CheckableImageButton C;
    private o4.g D;
    private Button E;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final LinkedHashSet<j<? super S>> f25368o = new LinkedHashSet<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final LinkedHashSet<View.OnClickListener> f25369p = new LinkedHashSet<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final LinkedHashSet<DialogInterface.OnCancelListener> f25370q = new LinkedHashSet<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final LinkedHashSet<DialogInterface.OnDismissListener> f25371r = new LinkedHashSet<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f25372s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.google.android.material.datepicker.d<S> f25373t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private p<S> f25374u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.google.android.material.datepicker.a f25375v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private h<S> f25376w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f25377x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private CharSequence f25378y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f25379z;

    /* JADX INFO: compiled from: MaterialDatePicker.java */
    class a implements View.OnClickListener {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = i.this.f25368o.iterator();
            while (it.hasNext()) {
                ((j) it.next()).a(i.this.A());
            }
            i.this.dismiss();
        }
    }

    /* JADX INFO: compiled from: MaterialDatePicker.java */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = i.this.f25369p.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            i.this.dismiss();
        }
    }

    /* JADX INFO: compiled from: MaterialDatePicker.java */
    class c extends o<S> {
        c() {
        }

        @Override // com.google.android.material.datepicker.o
        public void a(S s10) {
            i.this.H();
            i.this.E.setEnabled(i.this.f25373t.B2());
        }
    }

    /* JADX INFO: compiled from: MaterialDatePicker.java */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i.this.E.setEnabled(i.this.f25373t.B2());
            i.this.C.toggle();
            i iVar = i.this;
            iVar.I(iVar.C);
            i.this.G();
        }
    }

    private int B(Context context) {
        int i10 = this.f25372s;
        return i10 != 0 ? i10 : this.f25373t.q2(context);
    }

    private void C(Context context) {
        this.C.setTag(H);
        this.C.setImageDrawable(w(context));
        this.C.setChecked(this.A != 0);
        a0.q0(this.C, null);
        I(this.C);
        this.C.setOnClickListener(new d());
    }

    static boolean D(Context context) {
        return F(context, R.attr.windowFullscreen);
    }

    static boolean E(Context context) {
        return F(context, y3.b.f36652v);
    }

    static boolean F(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(l4.b.c(context, y3.b.f36649s, h.class.getCanonicalName()), new int[]{i10});
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        int iB = B(requireContext());
        this.f25376w = h.F(this.f25373t, iB, this.f25375v);
        this.f25374u = this.C.isChecked() ? k.q(this.f25373t, iB, this.f25375v) : this.f25376w;
        H();
        w wVarM = getChildFragmentManager().m();
        wVarM.m(y3.f.f36719x, this.f25374u);
        wVarM.h();
        this.f25374u.o(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        String strY = y();
        this.B.setContentDescription(String.format(getString(y3.i.f36750i), strY));
        this.B.setText(strY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(CheckableImageButton checkableImageButton) {
        this.C.setContentDescription(this.C.isChecked() ? checkableImageButton.getContext().getString(y3.i.f36753l) : checkableImageButton.getContext().getString(y3.i.f36755n));
    }

    private static Drawable w(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, g.a.b(context, y3.e.f36690b));
        stateListDrawable.addState(new int[0], g.a.b(context, y3.e.f36691c));
        return stateListDrawable;
    }

    private static int x(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(y3.d.F) + resources.getDimensionPixelOffset(y3.d.G) + resources.getDimensionPixelOffset(y3.d.E);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(y3.d.A);
        int i10 = m.f25395t;
        return dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelSize(y3.d.f36687y) * i10) + ((i10 - 1) * resources.getDimensionPixelOffset(y3.d.D)) + resources.getDimensionPixelOffset(y3.d.f36685w);
    }

    private static int z(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(y3.d.f36686x);
        int i10 = l.Q().f25391r;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(y3.d.f36688z) * i10) + ((i10 - 1) * resources.getDimensionPixelOffset(y3.d.C));
    }

    public final S A() {
        return this.f25373t.d3();
    }

    @Override // androidx.fragment.app.d, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.f25370q.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f25372s = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.f25373t = (com.google.android.material.datepicker.d) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f25375v = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f25377x = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f25378y = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.A = bundle.getInt("INPUT_MODE_KEY");
    }

    @Override // androidx.fragment.app.d
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), B(requireContext()));
        Context context = dialog.getContext();
        this.f25379z = D(context);
        int iC = l4.b.c(context, y3.b.f36642l, i.class.getCanonicalName());
        o4.g gVar = new o4.g(context, null, y3.b.f36649s, y3.j.f36775r);
        this.D = gVar;
        gVar.M(context);
        this.D.W(ColorStateList.valueOf(iC));
        this.D.V(a0.y(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f25379z ? y3.h.f36741r : y3.h.f36740q, viewGroup);
        Context context = viewInflate.getContext();
        if (this.f25379z) {
            viewInflate.findViewById(y3.f.f36719x).setLayoutParams(new LinearLayout.LayoutParams(z(context), -2));
        } else {
            View viewFindViewById = viewInflate.findViewById(y3.f.f36720y);
            View viewFindViewById2 = viewInflate.findViewById(y3.f.f36719x);
            viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(z(context), -1));
            viewFindViewById2.setMinimumHeight(x(requireContext()));
        }
        TextView textView = (TextView) viewInflate.findViewById(y3.f.D);
        this.B = textView;
        a0.s0(textView, 1);
        this.C = (CheckableImageButton) viewInflate.findViewById(y3.f.E);
        TextView textView2 = (TextView) viewInflate.findViewById(y3.f.F);
        CharSequence charSequence = this.f25378y;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f25377x);
        }
        C(context);
        this.E = (Button) viewInflate.findViewById(y3.f.f36698c);
        if (this.f25373t.B2()) {
            this.E.setEnabled(true);
        } else {
            this.E.setEnabled(false);
        }
        this.E.setTag(F);
        this.E.setOnClickListener(new a());
        Button button = (Button) viewInflate.findViewById(y3.f.f36696a);
        button.setTag(G);
        button.setOnClickListener(new b());
        return viewInflate;
    }

    @Override // androidx.fragment.app.d, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.f25371r.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f25372s);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f25373t);
        a.b bVar = new a.b(this.f25375v);
        if (this.f25376w.B() != null) {
            bVar.b(this.f25376w.B().f25393t);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar.a());
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f25377x);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f25378y);
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f25379z) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.D);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(y3.d.B);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.D, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new f4.a(requireDialog(), rect));
        }
        G();
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onStop() {
        this.f25374u.p();
        super.onStop();
    }

    public String y() {
        return this.f25373t.m0(getContext());
    }
}
