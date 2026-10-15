package j8;

import android.app.Dialog;
import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomEditText;
import com.tebakgambar.component.CustomTextView;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: CustomDialogImage.java */
/* JADX INFO: loaded from: classes2.dex */
public class a0 extends Dialog implements View.OnClickListener {
    LinearLayout A;
    LinearLayout B;
    RelativeLayout C;
    RelativeLayout D;
    RelativeLayout E;
    RelativeLayout F;
    Context G;
    d H;
    c I;
    public String J;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    CustomTextView f30743o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    CustomTextView f30744p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    CustomEditText f30745q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    CustomButton f30746r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    CustomButton f30747s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    CustomButton f30748t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    ImageView f30749u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    ImageView f30750v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    ImageView f30751w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    ProgressBar f30752x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    ProgressBar f30753y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    ProgressBar f30754z;

    /* JADX INFO: compiled from: CustomDialogImage.java */
    class a extends androidx.activity.g {
        a(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.g
        public void b() {
            c cVar = a0.this.I;
            if (cVar != null) {
                cVar.a();
            }
        }
    }

    /* JADX INFO: compiled from: CustomDialogImage.java */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            a0.this.f30744p.setText((140 - charSequence.toString().length()) + BuildConfig.FLAVOR);
        }
    }

    /* JADX INFO: compiled from: CustomDialogImage.java */
    public interface c {
        void a();

        void b(String str);
    }

    /* JADX INFO: compiled from: CustomDialogImage.java */
    public interface d {
        void a();

        void b();

        void c();
    }

    public a0(Context context, int i10) {
        super(context, i10);
        this.J = BuildConfig.FLAVOR;
        this.G = context;
        b();
    }

    private void a() {
        a aVar = new a(true);
        if (getOwnerActivity() != null) {
            ((androidx.appcompat.app.c) getOwnerActivity()).getOnBackPressedDispatcher().b(aVar);
        }
    }

    private void b() {
        requestWindowFeature(1);
        setContentView(R.layout.layout_dialog_image);
        this.f30749u = (ImageView) findViewById(R.id.imageViewFacebook);
        this.f30750v = (ImageView) findViewById(R.id.imageViewTwitter);
        this.f30751w = (ImageView) findViewById(R.id.imageViewInstagram);
        this.A = (LinearLayout) findViewById(R.id.linearLayoutWrapperImage);
        this.B = (LinearLayout) findViewById(R.id.linearLayoutButtonShare);
        this.E = (RelativeLayout) findViewById(R.id.linearLayoutWrapperStatus);
        this.D = (RelativeLayout) findViewById(R.id.relativeLayoutImageViewTwitter);
        this.C = (RelativeLayout) findViewById(R.id.relativeLayoutImageViewFacebook);
        this.F = (RelativeLayout) findViewById(R.id.relativeLayoutImageViewInstagram);
        this.f30754z = (ProgressBar) findViewById(R.id.progressBarShare);
        this.f30753y = (ProgressBar) findViewById(R.id.progressBarTwitter);
        this.f30752x = (ProgressBar) findViewById(R.id.progressBarFacebook);
        this.f30745q = (CustomEditText) findViewById(R.id.editTextPost);
        this.f30743o = (CustomTextView) findViewById(R.id.textViewLabelPost);
        this.f30744p = (CustomTextView) findViewById(R.id.textViewLimitPost);
        this.f30746r = (CustomButton) findViewById(R.id.buttonCancel);
        this.f30747s = (CustomButton) findViewById(R.id.buttonShare);
        this.f30748t = (CustomButton) findViewById(R.id.buttonHashTag);
        this.f30745q.addTextChangedListener(new b());
        setCanceledOnTouchOutside(false);
        this.B.setOnClickListener(this);
        this.f30746r.setOnClickListener(this);
        this.f30747s.setOnClickListener(this);
        this.C.setOnClickListener(this);
        this.f30749u.setOnClickListener(this);
        this.D.setOnClickListener(this);
        this.f30750v.setOnClickListener(this);
        this.F.setOnClickListener(this);
        this.f30751w.setOnClickListener(this);
        this.f30748t.setOnClickListener(this);
        if (!y8.a.d(this.G)) {
            this.F.setVisibility(8);
        }
        a();
    }

    public void d(c cVar) {
        this.I = cVar;
    }

    public void e(d dVar) {
        this.H = dVar;
    }

    public void o(String str, boolean z10) {
        if (z10) {
            this.f30748t.setVisibility(0);
        } else {
            this.f30748t.setVisibility(8);
        }
        this.f30748t.setVisibility(z10 ? 0 : 8);
        this.f30745q.setSelection(0);
        this.f30745q.setText(str);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.C || view == this.f30749u) {
            this.H.c();
            return;
        }
        if (view == this.D || view == this.f30750v) {
            this.H.b();
            return;
        }
        if (view == this.F || view == this.f30751w) {
            this.H.a();
            return;
        }
        if (view == this.B || view == this.f30747s) {
            if (this.f30745q.getText().toString().length() <= 0) {
                Toast.makeText(this.G, R.string.message_pesan_kosong, 0).show();
                return;
            }
            ((InputMethodManager) this.G.getSystemService("input_method")).hideSoftInputFromWindow(this.f30745q.getWindowToken(), 0);
            this.f30745q.setEnabled(false);
            this.B.setEnabled(false);
            this.f30747s.setEnabled(false);
            this.I.b(this.f30745q.getText().toString());
            this.f30754z.setVisibility(0);
            return;
        }
        if (view == this.f30746r) {
            ((InputMethodManager) this.G.getSystemService("input_method")).hideSoftInputFromWindow(this.f30745q.getWindowToken(), 0);
            dismiss();
            this.I.a();
        } else if (view == this.f30748t) {
            int length = this.f30745q.getText().toString().length();
            String str = this.J;
            if (str == null || str.isEmpty()) {
                this.f30745q.append(this.G.getResources().getString(R.string.label_hashtag_kuis));
            } else {
                this.f30745q.append(this.J + " " + this.G.getResources().getString(R.string.label_hashtag_kuis));
            }
            this.f30745q.setSelection(length);
        }
    }

    public void p(int i10) {
        this.A.setVisibility(8);
        this.E.setVisibility(0);
        this.f30745q.setSelection(0);
        this.f30745q.setHint(this.G.getResources().getString(R.string.hint_pesanmu));
        ((InputMethodManager) this.G.getSystemService("input_method")).toggleSoftInput(2, 1);
        if (i10 == 0) {
            this.f30748t.setVisibility(0);
            this.f30743o.setText(R.string.share_this_post);
            this.f30744p.setVisibility(8);
            this.f30745q.setFilters(new InputFilter[0]);
            return;
        }
        String str = this.J;
        if (str == null || str.isEmpty()) {
            this.f30745q.setText(" " + this.G.getResources().getString(R.string.label_hashtag_kuis));
        } else {
            this.f30745q.setText(" " + this.J + " " + this.G.getResources().getString(R.string.label_hashtag_kuis));
        }
        this.f30748t.setVisibility(8);
        CustomTextView customTextView = this.f30743o;
        StringBuilder sb = new StringBuilder();
        sb.append(i10 == 1 ? "Tweet" : "Share");
        sb.append(" this post ");
        customTextView.setText(sb.toString());
        this.f30745q.setFilters(new InputFilter[]{new InputFilter.LengthFilter(140)});
        this.f30744p.setText((140 - this.f30745q.getText().length()) + BuildConfig.FLAVOR);
        this.f30744p.setVisibility(0);
    }
}
