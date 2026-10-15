package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.ClickableImageView;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomEditText;
import com.tebakgambar.component.CustomTextView;
import com.tebakgambar.question.RegularQuestionActivity;

/* JADX INFO: compiled from: ActivityRegularQuestionBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class p extends o {

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private static final ViewDataBinding.i f33237y0 = null;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private static final SparseIntArray f33238z0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private final RelativeLayout f33239p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private final Button f33240q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private f f33241r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private b f33242s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private c f33243t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private d f33244u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private e f33245v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private androidx.databinding.h f33246w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private long f33247x0;

    /* JADX INFO: compiled from: ActivityRegularQuestionBindingImpl.java */
    class a implements androidx.databinding.h {
        a() {
        }

        @Override // androidx.databinding.h
        public void a() {
            String strA = d0.d.a(p.this.S);
            com.tebakgambar.question.g gVar = p.this.f33235n0;
            if (gVar != null) {
                androidx.databinding.m<String> mVar = gVar.I;
                if (mVar != null) {
                    mVar.z(strA);
                }
            }
        }
    }

    /* JADX INFO: compiled from: ActivityRegularQuestionBindingImpl.java */
    public static class b implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private RegularQuestionActivity.i f33249o;

        public b a(RegularQuestionActivity.i iVar) {
            this.f33249o = iVar;
            if (iVar == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f33249o.u(view);
        }
    }

    /* JADX INFO: compiled from: ActivityRegularQuestionBindingImpl.java */
    public static class c implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private RegularQuestionActivity.i f33250o;

        public c a(RegularQuestionActivity.i iVar) {
            this.f33250o = iVar;
            if (iVar == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f33250o.s(view);
        }
    }

    /* JADX INFO: compiled from: ActivityRegularQuestionBindingImpl.java */
    public static class d implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private RegularQuestionActivity.i f33251o;

        public d a(RegularQuestionActivity.i iVar) {
            this.f33251o = iVar;
            if (iVar == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f33251o.t(view);
        }
    }

    /* JADX INFO: compiled from: ActivityRegularQuestionBindingImpl.java */
    public static class e implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private RegularQuestionActivity.i f33252o;

        public e a(RegularQuestionActivity.i iVar) {
            this.f33252o = iVar;
            if (iVar == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f33252o.w(view);
        }
    }

    /* JADX INFO: compiled from: ActivityRegularQuestionBindingImpl.java */
    public static class f implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private RegularQuestionActivity.i f33253o;

        public f a(RegularQuestionActivity.i iVar) {
            this.f33253o = iVar;
            if (iVar == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f33253o.v(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f33238z0 = sparseIntArray;
        sparseIntArray.put(R.id.relativeLayoutLoading, 9);
        sparseIntArray.put(R.id.relativeLayoutFailed, 10);
        sparseIntArray.put(R.id.buttonTryAgain, 11);
        sparseIntArray.put(R.id.linearLayoutWrapperJawaban, 12);
        sparseIntArray.put(R.id.linearLayoutJawaban, 13);
        sparseIntArray.put(R.id.textViewInstruksiClue, 14);
        sparseIntArray.put(R.id.frameAds, 15);
        sparseIntArray.put(R.id.scrollViewWrapperSoal, 16);
        sparseIntArray.put(R.id.linearLayoutWrapperSoal, 17);
        sparseIntArray.put(R.id.relativeLayoutGlobal, 18);
        sparseIntArray.put(R.id.linearLayoutWrapperBantuan, 19);
        sparseIntArray.put(R.id.relativeLayoutQuestionLabel, 20);
        sparseIntArray.put(R.id.textViewQuestion2, 21);
        sparseIntArray.put(R.id.relativeLayoutTimer, 22);
        sparseIntArray.put(R.id.textViewTimer, 23);
        sparseIntArray.put(R.id.imageViewShare, 24);
        sparseIntArray.put(R.id.imageViewSoal, 25);
        sparseIntArray.put(R.id.imageViewFreeAnswer, 26);
    }

    public p(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 27, f33237y0, f33238z0));
    }

    private boolean B0(androidx.databinding.m<Boolean> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33247x0 |= 2;
        }
        return true;
    }

    private boolean x0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33247x0 |= 8;
        }
        return true;
    }

    private boolean y0(androidx.databinding.m<Boolean> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33247x0 |= 4;
        }
        return true;
    }

    private boolean z0(androidx.databinding.m<Boolean> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33247x0 |= 1;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00e1 A[PHI: r2
      0x00e1: PHI (r2v4 long) = (r2v3 long), (r2v10 long) binds: [B:49:0x00b3, B:63:0x00db] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0116 A[PHI: r2
      0x0116: PHI (r2v6 long) = (r2v5 long), (r2v8 long) binds: [B:68:0x00e8, B:82:0x0110] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0133  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void F() {
        /*
            Method dump skipped, instruction units count: 426
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o8.p.F():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.f33247x0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.f33247x0 = 64L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        if (i10 == 0) {
            return z0((androidx.databinding.m) obj, i11);
        }
        if (i10 == 1) {
            return B0((androidx.databinding.m) obj, i11);
        }
        if (i10 == 2) {
            return y0((androidx.databinding.m) obj, i11);
        }
        if (i10 != 3) {
            return false;
        }
        return x0((androidx.databinding.m) obj, i11);
    }

    @Override // o8.o
    public void u0(RegularQuestionActivity.i iVar) {
        this.f33236o0 = iVar;
        synchronized (this) {
            this.f33247x0 |= 16;
        }
        x(1);
        super.k0();
    }

    @Override // o8.o
    public void w0(com.tebakgambar.question.g gVar) {
        this.f33235n0 = gVar;
        synchronized (this) {
            this.f33247x0 |= 32;
        }
        x(2);
        super.k0();
    }

    private p(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 4, (CustomButton) objArr[2], (CustomButton) objArr[4], (CustomButton) objArr[11], (ConstraintLayout) objArr[7], (CustomEditText) objArr[1], (FrameLayout) objArr[15], (ClickableImageView) objArr[26], (ImageView) objArr[8], (ImageView) objArr[24], (ImageView) objArr[25], (LinearLayout) objArr[13], (LinearLayout) objArr[3], (LinearLayout) objArr[19], (LinearLayout) objArr[12], (LinearLayout) objArr[17], (RelativeLayout) objArr[10], (RelativeLayout) objArr[18], (RelativeLayout) objArr[9], (RelativeLayout) objArr[20], (RelativeLayout) objArr[22], (RelativeLayout) objArr[6], (ScrollView) objArr[16], (CustomTextView) objArr[14], (CustomTextView) objArr[21], (CustomTextView) objArr[23]);
        this.f33246w0 = new a();
        this.f33247x0 = -1L;
        this.O.setTag(null);
        this.P.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        this.V.setTag(null);
        this.Z.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.f33239p0 = relativeLayout;
        relativeLayout.setTag(null);
        Button button = (Button) objArr[5];
        this.f33240q0 = button;
        button.setTag(null);
        this.f33230i0.setTag(null);
        p0(view);
        Z();
    }
}
