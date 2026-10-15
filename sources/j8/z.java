package j8;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.RelativeLayout;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;
import java.util.ArrayList;

/* JADX INFO: compiled from: CustomDialogClueKamu.java */
/* JADX INFO: loaded from: classes2.dex */
public class z extends Dialog implements View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Context f30921o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    c f30922p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    CustomButton f30923q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    ArrayList<RelativeLayout> f30924r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    ArrayList<CustomTextView> f30925s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    ArrayList<String> f30926t;

    /* JADX INFO: compiled from: CustomDialogClueKamu.java */
    class a extends ArrayList<RelativeLayout> {
        a() {
            add((RelativeLayout) z.this.findViewById(R.id.linearLayoutClue1));
            add((RelativeLayout) z.this.findViewById(R.id.linearLayoutClue2));
            add((RelativeLayout) z.this.findViewById(R.id.linearLayoutClue3));
            add((RelativeLayout) z.this.findViewById(R.id.linearLayoutClue4));
        }
    }

    /* JADX INFO: compiled from: CustomDialogClueKamu.java */
    class b extends ArrayList<CustomTextView> {
        b() {
            add((CustomTextView) z.this.findViewById(R.id.textViewClue1));
            add((CustomTextView) z.this.findViewById(R.id.textViewClue2));
            add((CustomTextView) z.this.findViewById(R.id.textViewClue3));
            add((CustomTextView) z.this.findViewById(R.id.textViewClue4));
        }
    }

    /* JADX INFO: compiled from: CustomDialogClueKamu.java */
    public interface c {
        void a(int i10);
    }

    public z(Context context, int i10, ArrayList<String> arrayList) {
        super(context, i10);
        this.f30924r = new ArrayList<>();
        this.f30925s = new ArrayList<>();
        this.f30926t = new ArrayList<>();
        requestWindowFeature(1);
        setContentView(R.layout.layout_dialog_clue_kamu);
        this.f30921o = context;
        this.f30926t = arrayList;
        this.f30924r = new a();
        this.f30925s = new b();
        this.f30923q = (CustomButton) findViewById(R.id.textViewDecline);
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (arrayList.get(i11).equals("-")) {
                this.f30924r.get(i11).setOnClickListener(this);
            } else {
                this.f30924r.get(i11).setBackgroundResource(R.drawable.ic_transparent);
                this.f30925s.get(i11).setTextColor(Color.parseColor("#03877A"));
                this.f30925s.get(i11).setText(arrayList.get(i11));
            }
        }
        this.f30923q.setOnClickListener(this);
        setCanceledOnTouchOutside(false);
    }

    public void a(c cVar) {
        this.f30922p = cVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.textViewDecline) {
            dismiss();
        }
        switch (id) {
            case R.id.linearLayoutClue1 /* 2131362186 */:
                this.f30922p.a(0);
                break;
            case R.id.linearLayoutClue2 /* 2131362187 */:
                this.f30922p.a(1);
                break;
            case R.id.linearLayoutClue3 /* 2131362188 */:
                this.f30922p.a(2);
                break;
            case R.id.linearLayoutClue4 /* 2131362189 */:
                this.f30922p.a(3);
                break;
            default:
                dismiss();
                break;
        }
    }
}
