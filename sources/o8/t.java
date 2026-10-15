package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomEditText;
import com.tebakgambar.component.CustomTextView;
import com.tebakgambar.sendquestion.SendQuestionActivity;

/* JADX INFO: compiled from: ActivitySendQuestionBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class t extends s {

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private static final ViewDataBinding.i f33269s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private static final SparseIntArray f33270t0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private final LinearLayout f33271j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private g f33272k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private androidx.databinding.h f33273l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private androidx.databinding.h f33274m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private androidx.databinding.h f33275n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private androidx.databinding.h f33276o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private androidx.databinding.h f33277p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private androidx.databinding.h f33278q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private long f33279r0;

    /* JADX INFO: compiled from: ActivitySendQuestionBindingImpl.java */
    class a implements androidx.databinding.h {
        a() {
        }

        @Override // androidx.databinding.h
        public void a() {
            String strA = d0.d.a(t.this.P);
            com.tebakgambar.sendquestion.a aVar = t.this.f33267h0;
            if (aVar != null) {
                androidx.databinding.m<String> mVar = aVar.B;
                if (mVar != null) {
                    mVar.z(strA);
                }
            }
        }
    }

    /* JADX INFO: compiled from: ActivitySendQuestionBindingImpl.java */
    class b implements androidx.databinding.h {
        b() {
        }

        @Override // androidx.databinding.h
        public void a() {
            String strA = d0.d.a(t.this.Q);
            com.tebakgambar.sendquestion.a aVar = t.this.f33267h0;
            if (aVar != null) {
                androidx.databinding.m<String> mVar = aVar.A;
                if (mVar != null) {
                    mVar.z(strA);
                }
            }
        }
    }

    /* JADX INFO: compiled from: ActivitySendQuestionBindingImpl.java */
    class c implements androidx.databinding.h {
        c() {
        }

        @Override // androidx.databinding.h
        public void a() {
            String strA = d0.d.a(t.this.R);
            com.tebakgambar.sendquestion.a aVar = t.this.f33267h0;
            if (aVar != null) {
                androidx.databinding.m<String> mVar = aVar.f27176x;
                if (mVar != null) {
                    mVar.z(strA);
                }
            }
        }
    }

    /* JADX INFO: compiled from: ActivitySendQuestionBindingImpl.java */
    class d implements androidx.databinding.h {
        d() {
        }

        @Override // androidx.databinding.h
        public void a() {
            String strA = d0.d.a(t.this.S);
            com.tebakgambar.sendquestion.a aVar = t.this.f33267h0;
            if (aVar != null) {
                androidx.databinding.m<String> mVar = aVar.f27178z;
                if (mVar != null) {
                    mVar.z(strA);
                }
            }
        }
    }

    /* JADX INFO: compiled from: ActivitySendQuestionBindingImpl.java */
    class e implements androidx.databinding.h {
        e() {
        }

        @Override // androidx.databinding.h
        public void a() {
            String strA = d0.d.a(t.this.T);
            com.tebakgambar.sendquestion.a aVar = t.this.f33267h0;
            if (aVar != null) {
                androidx.databinding.m<String> mVar = aVar.f27177y;
                if (mVar != null) {
                    mVar.z(strA);
                }
            }
        }
    }

    /* JADX INFO: compiled from: ActivitySendQuestionBindingImpl.java */
    class f implements androidx.databinding.h {
        f() {
        }

        @Override // androidx.databinding.h
        public void a() {
            String strA = d0.d.a(t.this.U);
            com.tebakgambar.sendquestion.a aVar = t.this.f33267h0;
            if (aVar != null) {
                androidx.databinding.m<String> mVar = aVar.f27175w;
                if (mVar != null) {
                    mVar.z(strA);
                }
            }
        }
    }

    /* JADX INFO: compiled from: ActivitySendQuestionBindingImpl.java */
    public static class g implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private SendQuestionActivity.a f33286o;

        public g a(SendQuestionActivity.a aVar) {
            this.f33286o = aVar;
            if (aVar == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f33286o.c(view);
        }
    }

    static {
        ViewDataBinding.i iVar = new ViewDataBinding.i(20);
        f33269s0 = iVar;
        iVar.a(0, new String[]{"header_normal"}, new int[]{15}, new int[]{R.layout.header_normal});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f33270t0 = sparseIntArray;
        sparseIntArray.put(R.id.scrollViewWrapper, 16);
        sparseIntArray.put(R.id.linearLayoutWrapper, 17);
        sparseIntArray.put(R.id.textViewLabelKirimSoal, 18);
        sparseIntArray.put(R.id.frameAds, 19);
    }

    public t(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 20, f33269s0, f33270t0));
    }

    private boolean B0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 64;
        }
        return true;
    }

    private boolean E0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 1;
        }
        return true;
    }

    private boolean F0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 1024;
        }
        return true;
    }

    private boolean K0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 4;
        }
        return true;
    }

    private boolean L0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 32;
        }
        return true;
    }

    private boolean M0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 256;
        }
        return true;
    }

    private boolean R0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 16;
        }
        return true;
    }

    private boolean S0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 128;
        }
        return true;
    }

    private boolean T0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 8;
        }
        return true;
    }

    private boolean U0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 2048;
        }
        return true;
    }

    private boolean V0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 4096;
        }
        return true;
    }

    private boolean x0(e0 e0Var, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 512;
        }
        return true;
    }

    private boolean y0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 8192;
        }
        return true;
    }

    private boolean z0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33279r0 |= 2;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00f9  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void F() {
        /*
            Method dump skipped, instruction units count: 1033
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o8.t.F():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            if (this.f33279r0 != 0) {
                return true;
            }
            return this.X.W();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.f33279r0 = 65536L;
        }
        this.X.Z();
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        switch (i10) {
            case 0:
                return E0((androidx.databinding.m) obj, i11);
            case 1:
                return z0((androidx.databinding.m) obj, i11);
            case 2:
                return K0((androidx.databinding.m) obj, i11);
            case 3:
                return T0((androidx.databinding.m) obj, i11);
            case 4:
                return R0((androidx.databinding.m) obj, i11);
            case 5:
                return L0((androidx.databinding.m) obj, i11);
            case 6:
                return B0((androidx.databinding.m) obj, i11);
            case 7:
                return S0((androidx.databinding.m) obj, i11);
            case 8:
                return M0((androidx.databinding.m) obj, i11);
            case 9:
                return x0((e0) obj, i11);
            case 10:
                return F0((androidx.databinding.m) obj, i11);
            case 11:
                return U0((androidx.databinding.m) obj, i11);
            case 12:
                return V0((androidx.databinding.m) obj, i11);
            case 13:
                return y0((androidx.databinding.m) obj, i11);
            default:
                return false;
        }
    }

    @Override // o8.s
    public void u0(SendQuestionActivity.a aVar) {
        this.f33268i0 = aVar;
        synchronized (this) {
            this.f33279r0 |= 16384;
        }
        x(1);
        super.k0();
    }

    @Override // o8.s
    public void w0(com.tebakgambar.sendquestion.a aVar) {
        this.f33267h0 = aVar;
        synchronized (this) {
            this.f33279r0 |= 32768;
        }
        x(2);
        super.k0();
    }

    private t(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 14, (CustomButton) objArr[14], (CustomEditText) objArr[12], (CustomEditText) objArr[9], (CustomEditText) objArr[3], (CustomEditText) objArr[7], (CustomEditText) objArr[5], (CustomEditText) objArr[1], (FrameLayout) objArr[19], (LinearLayout) objArr[17], (e0) objArr[15], (ScrollView) objArr[16], (CustomTextView) objArr[11], (CustomTextView) objArr[13], (CustomTextView) objArr[10], (CustomTextView) objArr[4], (CustomTextView) objArr[6], (CustomTextView) objArr[8], (CustomTextView) objArr[2], (CustomTextView) objArr[18]);
        this.f33273l0 = new a();
        this.f33274m0 = new b();
        this.f33275n0 = new c();
        this.f33276o0 = new d();
        this.f33277p0 = new e();
        this.f33278q0 = new f();
        this.f33279r0 = -1L;
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        this.T.setTag(null);
        this.U.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f33271j0 = linearLayout;
        linearLayout.setTag(null);
        o0(this.X);
        this.Z.setTag(null);
        this.f33260a0.setTag(null);
        this.f33261b0.setTag(null);
        this.f33262c0.setTag(null);
        this.f33263d0.setTag(null);
        this.f33264e0.setTag(null);
        this.f33265f0.setTag(null);
        p0(view);
        Z();
    }
}
