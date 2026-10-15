package j8;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.LinearLayout;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: CustomDialogReset.java */
/* JADX INFO: loaded from: classes2.dex */
public class c0 extends Dialog implements View.OnClickListener {
    String A;
    String B;
    String C;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Context f30776o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    CustomTextView f30777p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    CustomTextView f30778q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    CustomTextView f30779r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    CustomButton f30780s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    CustomButton f30781t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    CustomButton f30782u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    i f30783v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f30784w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f30785x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    Integer f30786y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    String f30787z;

    /* JADX INFO: compiled from: CustomDialogReset.java */
    class a extends androidx.activity.g {
        a(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.g
        public void b() {
            i iVar = c0.this.f30783v;
            if (iVar != null) {
                iVar.b();
            }
        }
    }

    /* JADX INFO: compiled from: CustomDialogReset.java */
    class b extends ClickableSpan {
        b() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            if (!y8.a.c(c0.this.f30776o)) {
                c0.this.f30776o.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://m.facebook.com/TebakGambarOfficial")));
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("fb://page/566897873338343"));
            c0.this.f30776o.startActivity(intent);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(Color.parseColor("#3b5998"));
            textPaint.setARGB(255, 59, 89, 152);
            textPaint.setUnderlineText(true);
        }
    }

    /* JADX INFO: compiled from: CustomDialogReset.java */
    class c extends ClickableSpan {
        c() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            c0.this.f30776o.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://twitter.com/tebakgambar_id")));
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(Color.parseColor("#4099FF"));
            textPaint.setARGB(255, 64, 153, 255);
            textPaint.setUnderlineText(true);
        }
    }

    /* JADX INFO: compiled from: CustomDialogReset.java */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i iVar = c0.this.f30783v;
            if (iVar != null) {
                iVar.b();
            }
        }
    }

    /* JADX INFO: compiled from: CustomDialogReset.java */
    class e extends ClickableSpan {
        e() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            y8.a.i(c0.this.f30776o);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(Color.parseColor("#3b5998"));
            textPaint.setARGB(255, 59, 89, 152);
            textPaint.setUnderlineText(true);
        }
    }

    /* JADX INFO: compiled from: CustomDialogReset.java */
    class f extends ClickableSpan {
        f() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            c0.this.f30776o.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://twitter.com/tebakgambar_id")));
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(Color.parseColor("#4099FF"));
            textPaint.setARGB(255, 64, 153, 255);
            textPaint.setUnderlineText(true);
        }
    }

    /* JADX INFO: compiled from: CustomDialogReset.java */
    class g extends ClickableSpan {
        g() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            c0.this.f30776o.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://tebakgambar.com/lineat")));
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(Color.parseColor("#00C300"));
            textPaint.setARGB(255, 0, 195, 0);
            textPaint.setUnderlineText(true);
        }
    }

    /* JADX INFO: compiled from: CustomDialogReset.java */
    class h extends ClickableSpan {
        h() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            c0.this.f30776o.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://instagram.com/tebakgambar_id")));
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(Color.parseColor("#517fa4"));
            textPaint.setARGB(255, 81, 127, 164);
            textPaint.setUnderlineText(true);
        }
    }

    /* JADX INFO: compiled from: CustomDialogReset.java */
    public interface i {
        void a();

        void b();
    }

    public c0(Context context, int i10, boolean z10, String str, Integer num) {
        super(context, i10);
        this.f30784w = false;
        this.f30785x = false;
        this.f30787z = BuildConfig.FLAVOR;
        this.A = BuildConfig.FLAVOR;
        this.B = BuildConfig.FLAVOR;
        this.C = BuildConfig.FLAVOR;
        this.f30776o = context;
        this.f30784w = z10;
        this.f30787z = str;
        this.f30786y = num;
        b();
    }

    private void a() {
        a aVar = new a(true);
        if (getOwnerActivity() != null) {
            ((androidx.appcompat.app.c) getOwnerActivity()).getOnBackPressedDispatcher().b(aVar);
        }
    }

    private void b() {
        if (this.f30777p == null) {
            if (this.f30785x) {
                requestWindowFeature(1);
                setContentView(R.layout.layout_dialog_selfie_tutorial);
                this.f30782u = (CustomButton) findViewById(R.id.buttonClose);
                this.f30779r = (CustomTextView) findViewById(R.id.textViewAturanSelfie_1);
                this.f30782u.append(" ");
                this.f30782u.setOnClickListener(this);
                SpannableString spannableString = new SpannableString("FACEBOOK");
                spannableString.setSpan(new e(), 0, spannableString.length(), 33);
                SpannableString spannableString2 = new SpannableString("TWITTER");
                spannableString2.setSpan(new f(), 0, spannableString2.length(), 33);
                SpannableString spannableString3 = new SpannableString("LINE");
                spannableString3.setSpan(new g(), 0, spannableString3.length(), 33);
                SpannableString spannableString4 = new SpannableString("INSTAGRAM");
                spannableString4.setSpan(new h(), 0, spannableString4.length(), 33);
                this.f30779r.setMovementMethod(LinkMovementMethod.getInstance());
                this.f30779r.append(" ");
                this.f30779r.append(spannableString);
                this.f30779r.append(" , ");
                this.f30779r.append(spannableString3);
                this.f30779r.append(" , ");
                this.f30779r.append(spannableString2);
                this.f30779r.append(this.f30776o.getString(R.string.suffix_OR));
                this.f30779r.append(spannableString4);
                this.f30779r.append(this.f30776o.getString(R.string.postfix_TEBAK_GAMBAR));
                this.f30779r.append(this.f30776o.getResources().getString(R.string.label_tutorial_aturan_kuis_selfie_1_2));
            } else {
                requestWindowFeature(1);
                setContentView(R.layout.layout_dialog_reset);
                this.f30778q = (CustomTextView) findViewById(R.id.textViewJudulPertanyaan);
                this.f30777p = (CustomTextView) findViewById(R.id.textViewPertanyaan);
                this.f30780s = (CustomButton) findViewById(R.id.textViewAccept);
                this.f30781t = (CustomButton) findViewById(R.id.textViewDecline);
            }
        }
        try {
            if (this.f30784w) {
                this.f30780s.setVisibility(8);
                this.f30781t.setVisibility(8);
                this.f30777p.setText(this.f30787z);
                this.f30777p.setTextSize(0, this.f30776o.getResources().getDimension(this.f30786y.intValue()));
                if (!this.f30787z.contains("loading")) {
                    setCanceledOnTouchOutside(true);
                }
            } else {
                this.f30778q.setVisibility(8);
                this.f30780s.setOnClickListener(this);
                this.f30781t.setOnClickListener(this);
                setCanceledOnTouchOutside(false);
            }
        } catch (Exception unused) {
        }
        a();
    }

    public void d() {
        this.f30778q.setText(this.A);
        this.f30778q.setVisibility(this.A == null ? 8 : 0);
        this.f30777p.setText(this.f30787z);
        this.f30780s.setText(this.B);
        this.f30781t.setText(this.C);
        this.f30781t.setVisibility(this.C == null ? 8 : 0);
        this.f30780s.setOnClickListener(this);
        this.f30781t.setOnClickListener(this);
        this.f30780s.setVisibility(this.B != null ? 0 : 8);
    }

    public void e(String str) {
        this.f30787z = str;
        b();
    }

    public void o(i iVar) {
        this.f30783v = iVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f30780s) {
            this.f30783v.a();
        } else if (view == this.f30781t) {
            this.f30783v.b();
        } else if (view == this.f30782u) {
            dismiss();
        }
    }

    public void p(String str, String str2, String str3) {
        if (this.f30777p == null) {
            requestWindowFeature(1);
            setContentView(R.layout.layout_dialog_reset);
            this.f30778q = (CustomTextView) findViewById(R.id.textViewJudulPertanyaan);
            this.f30777p = (CustomTextView) findViewById(R.id.textViewPertanyaan);
            this.f30780s = (CustomButton) findViewById(R.id.textViewAccept);
            this.f30781t = (CustomButton) findViewById(R.id.textViewDecline);
        }
        this.f30778q.setVisibility(8);
        this.f30777p.setVisibility(0);
        this.f30780s.setText(str2);
        this.f30781t.setText(str3);
        this.f30777p.setText(str);
        this.f30780s.setOnClickListener(this);
        this.f30781t.setOnClickListener(this);
        setCanceledOnTouchOutside(false);
    }

    public void q() {
        this.f30778q.setVisibility(0);
        this.f30778q.setText(this.A);
        this.f30777p.setText(this.f30787z);
        this.f30780s.setText(this.B);
        this.f30781t.setText(this.C);
        this.f30780s.setOnClickListener(this);
        this.f30781t.setOnClickListener(this);
    }

    public void r(boolean z10) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.f30781t.setText(R.string.close);
        this.f30781t.setLayoutParams(layoutParams);
        this.f30780s.setVisibility(8);
        this.f30778q.setVisibility(8);
        this.f30777p.setText(this.f30787z);
        if (z10) {
            SpannableString spannableString = new SpannableString("facebook");
            spannableString.setSpan(new b(), 0, spannableString.length(), 33);
            SpannableString spannableString2 = new SpannableString("twitter");
            spannableString2.setSpan(new c(), 0, spannableString2.length(), 33);
            this.f30777p.setMovementMethod(LinkMovementMethod.getInstance());
            this.f30777p.append(" ");
            this.f30777p.append(spannableString);
            this.f30777p.append(this.f30776o.getString(R.string.suffix_or));
            this.f30777p.append(spannableString2);
            this.f30777p.append(this.f30776o.getString(R.string.postfix_tebak_gambar_ya));
        }
    }

    public void s() {
        this.f30777p.setText(this.f30787z);
        this.f30778q.setVisibility(8);
        this.f30780s.setText(this.B);
        this.f30781t.setText(this.C);
        this.f30780s.setOnClickListener(this);
        this.f30781t.setOnClickListener(this);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        if (this.C == null && this.B == null) {
            this.f30781t.postDelayed(new d(), 1000L);
        }
    }

    public c0(Context context, int i10, boolean z10, String str, String str2, String str3, String str4) {
        super(context, i10);
        this.f30784w = false;
        this.f30785x = false;
        this.f30787z = BuildConfig.FLAVOR;
        this.A = BuildConfig.FLAVOR;
        this.B = BuildConfig.FLAVOR;
        this.C = BuildConfig.FLAVOR;
        this.f30776o = context;
        this.A = str2;
        this.f30784w = z10;
        this.f30787z = str;
        this.B = str3;
        this.C = str4;
        b();
    }

    public c0(Context context, int i10, boolean z10) {
        super(context, i10);
        this.f30784w = false;
        this.f30785x = false;
        this.f30787z = BuildConfig.FLAVOR;
        this.A = BuildConfig.FLAVOR;
        this.B = BuildConfig.FLAVOR;
        this.C = BuildConfig.FLAVOR;
        this.f30776o = context;
        this.f30785x = z10;
        b();
    }
}
