package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.a0;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class AlertController {
    NestedScrollView A;
    private Drawable C;
    private ImageView D;
    private TextView E;
    private TextView F;
    private View G;
    ListAdapter H;
    private int J;
    private int K;
    int L;
    int M;
    int N;
    int O;
    private boolean P;
    Handler R;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final j f259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Window f260c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f261d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CharSequence f262e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CharSequence f263f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ListView f264g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f265h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f266i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f267j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f268k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f269l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f270m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Button f272o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CharSequence f273p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    Message f274q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Drawable f275r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    Button f276s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CharSequence f277t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    Message f278u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Drawable f279v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    Button f280w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private CharSequence f281x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    Message f282y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Drawable f283z;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f271n = false;
    private int B = 0;
    int I = -1;
    private int Q = 0;
    private final View.OnClickListener S = new a();

    public static class RecycleListView extends ListView {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f284o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final int f285p;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.j.f29128c2);
            this.f285p = typedArrayObtainStyledAttributes.getDimensionPixelOffset(f.j.f29133d2, -1);
            this.f284o = typedArrayObtainStyledAttributes.getDimensionPixelOffset(f.j.f29138e2, -1);
        }

        public void a(boolean z10, boolean z11) {
            if (z11 && z10) {
                return;
            }
            setPadding(getPaddingLeft(), z10 ? getPaddingTop() : this.f284o, getPaddingRight(), z11 ? getPaddingBottom() : this.f285p);
        }
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            Message messageObtain = (view != alertController.f272o || (message3 = alertController.f274q) == null) ? (view != alertController.f276s || (message2 = alertController.f278u) == null) ? (view != alertController.f280w || (message = alertController.f282y) == null) ? null : Message.obtain(message) : Message.obtain(message2) : Message.obtain(message3);
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.R.obtainMessage(1, alertController2.f259b).sendToTarget();
        }
    }

    class b implements NestedScrollView.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f287a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f288b;

        b(View view, View view2) {
            this.f287a = view;
            this.f288b = view2;
        }

        @Override // androidx.core.widget.NestedScrollView.c
        public void a(NestedScrollView nestedScrollView, int i10, int i11, int i12, int i13) {
            AlertController.f(nestedScrollView, this.f287a, this.f288b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ View f290o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ View f291p;

        c(View view, View view2) {
            this.f290o = view;
            this.f291p = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.f(AlertController.this.A, this.f290o, this.f291p);
        }
    }

    class d implements AbsListView.OnScrollListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f293a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f294b;

        d(View view, View view2) {
            this.f293a = view;
            this.f294b = view2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            AlertController.f(absListView, this.f293a, this.f294b);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ View f296o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ View f297p;

        e(View view, View view2) {
            this.f296o = view;
            this.f297p = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.f(AlertController.this.f264g, this.f296o, this.f297p);
        }
    }

    public static class f {
        public int A;
        public int B;
        public int C;
        public int D;
        public boolean[] F;
        public boolean G;
        public boolean H;
        public DialogInterface.OnMultiChoiceClickListener J;
        public Cursor K;
        public String L;
        public String M;
        public AdapterView.OnItemSelectedListener N;
        public e O;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f299a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LayoutInflater f300b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Drawable f302d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CharSequence f304f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f305g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public CharSequence f306h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public CharSequence f307i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Drawable f308j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public DialogInterface.OnClickListener f309k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public CharSequence f310l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public Drawable f311m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public DialogInterface.OnClickListener f312n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public CharSequence f313o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public Drawable f314p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public DialogInterface.OnClickListener f315q;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public DialogInterface.OnCancelListener f317s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public DialogInterface.OnDismissListener f318t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public DialogInterface.OnKeyListener f319u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public CharSequence[] f320v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public ListAdapter f321w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public DialogInterface.OnClickListener f322x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f323y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public View f324z;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f301c = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f303e = 0;
        public boolean E = false;
        public int I = -1;
        public boolean P = true;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public boolean f316r = true;

        class a extends ArrayAdapter<CharSequence> {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ RecycleListView f325o;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context context, int i10, int i11, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i10, i11, charSequenceArr);
                this.f325o = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i10, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i10, view, viewGroup);
                boolean[] zArr = f.this.F;
                if (zArr != null && zArr[i10]) {
                    this.f325o.setItemChecked(i10, true);
                }
                return view2;
            }
        }

        class b extends CursorAdapter {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private final int f327o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            private final int f328p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            final /* synthetic */ RecycleListView f329q;

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            final /* synthetic */ AlertController f330r;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(Context context, Cursor cursor, boolean z10, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z10);
                this.f329q = recycleListView;
                this.f330r = alertController;
                Cursor cursor2 = getCursor();
                this.f327o = cursor2.getColumnIndexOrThrow(f.this.L);
                this.f328p = cursor2.getColumnIndexOrThrow(f.this.M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f327o));
                this.f329q.setItemChecked(cursor.getPosition(), cursor.getInt(this.f328p) == 1);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return f.this.f300b.inflate(this.f330r.M, viewGroup, false);
            }
        }

        class c implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ AlertController f332o;

            c(AlertController alertController) {
                this.f332o = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
                f.this.f322x.onClick(this.f332o.f259b, i10);
                if (f.this.H) {
                    return;
                }
                this.f332o.f259b.dismiss();
            }
        }

        class d implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ RecycleListView f334o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            final /* synthetic */ AlertController f335p;

            d(RecycleListView recycleListView, AlertController alertController) {
                this.f334o = recycleListView;
                this.f335p = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
                boolean[] zArr = f.this.F;
                if (zArr != null) {
                    zArr[i10] = this.f334o.isItemChecked(i10);
                }
                f.this.J.onClick(this.f335p.f259b, i10, this.f334o.isItemChecked(i10));
            }
        }

        public interface e {
            void a(ListView listView);
        }

        public f(Context context) {
            this.f299a = context;
            this.f300b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        private void b(AlertController alertController) {
            ListAdapter hVar;
            RecycleListView recycleListView = (RecycleListView) this.f300b.inflate(alertController.L, (ViewGroup) null);
            if (this.G) {
                hVar = this.K == null ? new a(this.f299a, alertController.M, R.id.text1, this.f320v, recycleListView) : new b(this.f299a, this.K, false, recycleListView, alertController);
            } else {
                int i10 = this.H ? alertController.N : alertController.O;
                if (this.K != null) {
                    hVar = new SimpleCursorAdapter(this.f299a, i10, this.K, new String[]{this.L}, new int[]{R.id.text1});
                } else {
                    hVar = this.f321w;
                    if (hVar == null) {
                        hVar = new h(this.f299a, i10, R.id.text1, this.f320v);
                    }
                }
            }
            e eVar = this.O;
            if (eVar != null) {
                eVar.a(recycleListView);
            }
            alertController.H = hVar;
            alertController.I = this.I;
            if (this.f322x != null) {
                recycleListView.setOnItemClickListener(new c(alertController));
            } else if (this.J != null) {
                recycleListView.setOnItemClickListener(new d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.H) {
                recycleListView.setChoiceMode(1);
            } else if (this.G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f264g = recycleListView;
        }

        public void a(AlertController alertController) {
            View view = this.f305g;
            if (view != null) {
                alertController.l(view);
            } else {
                CharSequence charSequence = this.f304f;
                if (charSequence != null) {
                    alertController.q(charSequence);
                }
                Drawable drawable = this.f302d;
                if (drawable != null) {
                    alertController.n(drawable);
                }
                int i10 = this.f301c;
                if (i10 != 0) {
                    alertController.m(i10);
                }
                int i11 = this.f303e;
                if (i11 != 0) {
                    alertController.m(alertController.c(i11));
                }
            }
            CharSequence charSequence2 = this.f306h;
            if (charSequence2 != null) {
                alertController.o(charSequence2);
            }
            CharSequence charSequence3 = this.f307i;
            if (charSequence3 != null || this.f308j != null) {
                alertController.k(-1, charSequence3, this.f309k, null, this.f308j);
            }
            CharSequence charSequence4 = this.f310l;
            if (charSequence4 != null || this.f311m != null) {
                alertController.k(-2, charSequence4, this.f312n, null, this.f311m);
            }
            CharSequence charSequence5 = this.f313o;
            if (charSequence5 != null || this.f314p != null) {
                alertController.k(-3, charSequence5, this.f315q, null, this.f314p);
            }
            if (this.f320v != null || this.K != null || this.f321w != null) {
                b(alertController);
            }
            View view2 = this.f324z;
            if (view2 != null) {
                if (this.E) {
                    alertController.t(view2, this.A, this.B, this.C, this.D);
                    return;
                } else {
                    alertController.s(view2);
                    return;
                }
            }
            int i12 = this.f323y;
            if (i12 != 0) {
                alertController.r(i12);
            }
        }
    }

    private static final class g extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<DialogInterface> f337a;

        public g(DialogInterface dialogInterface) {
            this.f337a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == -3 || i10 == -2 || i10 == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f337a.get(), message.what);
            } else {
                if (i10 != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    private static class h extends ArrayAdapter<CharSequence> {
        public h(Context context, int i10, int i11, CharSequence[] charSequenceArr) {
            super(context, i10, i11, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, j jVar, Window window) {
        this.f258a = context;
        this.f259b = jVar;
        this.f260c = window;
        this.R = new g(jVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, f.j.F, f.a.f28990n, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(f.j.G, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(f.j.I, 0);
        this.L = typedArrayObtainStyledAttributes.getResourceId(f.j.K, 0);
        this.M = typedArrayObtainStyledAttributes.getResourceId(f.j.L, 0);
        this.N = typedArrayObtainStyledAttributes.getResourceId(f.j.N, 0);
        this.O = typedArrayObtainStyledAttributes.getResourceId(f.j.J, 0);
        this.P = typedArrayObtainStyledAttributes.getBoolean(f.j.M, true);
        this.f261d = typedArrayObtainStyledAttributes.getDimensionPixelSize(f.j.H, 0);
        typedArrayObtainStyledAttributes.recycle();
        jVar.h(1);
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    private void b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    static void f(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    private ViewGroup i(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    private int j() {
        int i10 = this.K;
        return i10 == 0 ? this.J : this.Q == 1 ? i10 : this.J;
    }

    private void p(ViewGroup viewGroup, View view, int i10, int i11) {
        View viewFindViewById = this.f260c.findViewById(f.f.f29074v);
        View viewFindViewById2 = this.f260c.findViewById(f.f.f29073u);
        if (Build.VERSION.SDK_INT >= 23) {
            a0.F0(view, i10, i11);
            if (viewFindViewById != null) {
                viewGroup.removeView(viewFindViewById);
            }
            if (viewFindViewById2 != null) {
                viewGroup.removeView(viewFindViewById2);
                return;
            }
            return;
        }
        if (viewFindViewById != null && (i10 & 1) == 0) {
            viewGroup.removeView(viewFindViewById);
            viewFindViewById = null;
        }
        if (viewFindViewById2 != null && (i10 & 2) == 0) {
            viewGroup.removeView(viewFindViewById2);
            viewFindViewById2 = null;
        }
        if (viewFindViewById == null && viewFindViewById2 == null) {
            return;
        }
        if (this.f263f != null) {
            this.A.setOnScrollChangeListener(new b(viewFindViewById, viewFindViewById2));
            this.A.post(new c(viewFindViewById, viewFindViewById2));
            return;
        }
        ListView listView = this.f264g;
        if (listView != null) {
            listView.setOnScrollListener(new d(viewFindViewById, viewFindViewById2));
            this.f264g.post(new e(viewFindViewById, viewFindViewById2));
            return;
        }
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        if (viewFindViewById2 != null) {
            viewGroup.removeView(viewFindViewById2);
        }
    }

    private void u(ViewGroup viewGroup) {
        int i10;
        Button button = (Button) viewGroup.findViewById(R.id.button1);
        this.f272o = button;
        button.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f273p) && this.f275r == null) {
            this.f272o.setVisibility(8);
            i10 = 0;
        } else {
            this.f272o.setText(this.f273p);
            Drawable drawable = this.f275r;
            if (drawable != null) {
                int i11 = this.f261d;
                drawable.setBounds(0, 0, i11, i11);
                this.f272o.setCompoundDrawables(this.f275r, null, null, null);
            }
            this.f272o.setVisibility(0);
            i10 = 1;
        }
        Button button2 = (Button) viewGroup.findViewById(R.id.button2);
        this.f276s = button2;
        button2.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f277t) && this.f279v == null) {
            this.f276s.setVisibility(8);
        } else {
            this.f276s.setText(this.f277t);
            Drawable drawable2 = this.f279v;
            if (drawable2 != null) {
                int i12 = this.f261d;
                drawable2.setBounds(0, 0, i12, i12);
                this.f276s.setCompoundDrawables(this.f279v, null, null, null);
            }
            this.f276s.setVisibility(0);
            i10 |= 2;
        }
        Button button3 = (Button) viewGroup.findViewById(R.id.button3);
        this.f280w = button3;
        button3.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f281x) && this.f283z == null) {
            this.f280w.setVisibility(8);
        } else {
            this.f280w.setText(this.f281x);
            Drawable drawable3 = this.f283z;
            if (drawable3 != null) {
                int i13 = this.f261d;
                drawable3.setBounds(0, 0, i13, i13);
                this.f280w.setCompoundDrawables(this.f283z, null, null, null);
            }
            this.f280w.setVisibility(0);
            i10 |= 4;
        }
        if (z(this.f258a)) {
            if (i10 == 1) {
                b(this.f272o);
            } else if (i10 == 2) {
                b(this.f276s);
            } else if (i10 == 4) {
                b(this.f280w);
            }
        }
        if (i10 != 0) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void v(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f260c.findViewById(f.f.f29075w);
        this.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(R.id.message);
        this.F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f263f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.A.removeView(this.F);
        if (this.f264g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.A.getParent();
        int iIndexOfChild = viewGroup2.indexOfChild(this.A);
        viewGroup2.removeViewAt(iIndexOfChild);
        viewGroup2.addView(this.f264g, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    private void w(ViewGroup viewGroup) {
        View viewInflate = this.f265h;
        if (viewInflate == null) {
            viewInflate = this.f266i != 0 ? LayoutInflater.from(this.f258a).inflate(this.f266i, viewGroup, false) : null;
        }
        boolean z10 = viewInflate != null;
        if (!z10 || !a(viewInflate)) {
            this.f260c.setFlags(131072, 131072);
        }
        if (!z10) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f260c.findViewById(f.f.f29066n);
        frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        if (this.f271n) {
            frameLayout.setPadding(this.f267j, this.f268k, this.f269l, this.f270m);
        }
        if (this.f264g != null) {
            ((LinearLayout.LayoutParams) ((LinearLayoutCompat.a) viewGroup.getLayoutParams())).weight = 0.0f;
        }
    }

    private void x(ViewGroup viewGroup) {
        if (this.G != null) {
            viewGroup.addView(this.G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f260c.findViewById(f.f.O).setVisibility(8);
            return;
        }
        this.D = (ImageView) this.f260c.findViewById(R.id.icon);
        if (!(!TextUtils.isEmpty(this.f262e)) || !this.P) {
            this.f260c.findViewById(f.f.O).setVisibility(8);
            this.D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f260c.findViewById(f.f.f29062j);
        this.E = textView;
        textView.setText(this.f262e);
        int i10 = this.B;
        if (i10 != 0) {
            this.D.setImageResource(i10);
            return;
        }
        Drawable drawable = this.C;
        if (drawable != null) {
            this.D.setImageDrawable(drawable);
        } else {
            this.E.setPadding(this.D.getPaddingLeft(), this.D.getPaddingTop(), this.D.getPaddingRight(), this.D.getPaddingBottom());
            this.D.setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void y() {
        View viewFindViewById;
        ListAdapter listAdapter;
        View viewFindViewById2;
        View viewFindViewById3 = this.f260c.findViewById(f.f.f29072t);
        int i10 = f.f.P;
        View viewFindViewById4 = viewFindViewById3.findViewById(i10);
        int i11 = f.f.f29065m;
        View viewFindViewById5 = viewFindViewById3.findViewById(i11);
        int i12 = f.f.f29063k;
        View viewFindViewById6 = viewFindViewById3.findViewById(i12);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById3.findViewById(f.f.f29067o);
        w(viewGroup);
        View viewFindViewById7 = viewGroup.findViewById(i10);
        View viewFindViewById8 = viewGroup.findViewById(i11);
        View viewFindViewById9 = viewGroup.findViewById(i12);
        ViewGroup viewGroupI = i(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupI2 = i(viewFindViewById8, viewFindViewById5);
        ViewGroup viewGroupI3 = i(viewFindViewById9, viewFindViewById6);
        v(viewGroupI2);
        u(viewGroupI3);
        x(viewGroupI);
        boolean z10 = viewGroup.getVisibility() != 8;
        boolean z11 = (viewGroupI == null || viewGroupI.getVisibility() == 8) ? 0 : 1;
        boolean z12 = (viewGroupI3 == null || viewGroupI3.getVisibility() == 8) ? false : true;
        if (!z12 && viewGroupI2 != null && (viewFindViewById2 = viewGroupI2.findViewById(f.f.K)) != null) {
            viewFindViewById2.setVisibility(0);
        }
        if (z11 != 0) {
            NestedScrollView nestedScrollView = this.A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View viewFindViewById10 = (this.f263f == null && this.f264g == null) ? null : viewGroupI.findViewById(f.f.N);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        } else if (viewGroupI2 != null && (viewFindViewById = viewGroupI2.findViewById(f.f.L)) != null) {
            viewFindViewById.setVisibility(0);
        }
        ListView listView = this.f264g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).a(z11, z12);
        }
        if (!z10) {
            View view = this.f264g;
            if (view == null) {
                view = this.A;
            }
            if (view != null) {
                p(viewGroupI2, view, z11 | (z12 ? 2 : 0), 3);
            }
        }
        ListView listView2 = this.f264g;
        if (listView2 == null || (listAdapter = this.H) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i13 = this.I;
        if (i13 > -1) {
            listView2.setItemChecked(i13, true);
            listView2.setSelection(i13);
        }
    }

    private static boolean z(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(f.a.f28989m, typedValue, true);
        return typedValue.data != 0;
    }

    public int c(int i10) {
        TypedValue typedValue = new TypedValue();
        this.f258a.getTheme().resolveAttribute(i10, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView d() {
        return this.f264g;
    }

    public void e() {
        this.f259b.setContentView(j());
        y();
    }

    public boolean g(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.r(keyEvent);
    }

    public boolean h(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.r(keyEvent);
    }

    public void k(int i10, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.R.obtainMessage(i10, onClickListener);
        }
        if (i10 == -3) {
            this.f281x = charSequence;
            this.f282y = message;
            this.f283z = drawable;
        } else if (i10 == -2) {
            this.f277t = charSequence;
            this.f278u = message;
            this.f279v = drawable;
        } else {
            if (i10 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f273p = charSequence;
            this.f274q = message;
            this.f275r = drawable;
        }
    }

    public void l(View view) {
        this.G = view;
    }

    public void m(int i10) {
        this.C = null;
        this.B = i10;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (i10 == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
            }
        }
    }

    public void n(Drawable drawable) {
        this.C = drawable;
        this.B = 0;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageDrawable(drawable);
            }
        }
    }

    public void o(CharSequence charSequence) {
        this.f263f = charSequence;
        TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void q(CharSequence charSequence) {
        this.f262e = charSequence;
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void r(int i10) {
        this.f265h = null;
        this.f266i = i10;
        this.f271n = false;
    }

    public void s(View view) {
        this.f265h = view;
        this.f266i = 0;
        this.f271n = false;
    }

    public void t(View view, int i10, int i11, int i12, int i13) {
        this.f265h = view;
        this.f266i = 0;
        this.f271n = true;
        this.f267j = i10;
        this.f268k = i11;
        this.f269l = i12;
        this.f270m = i13;
    }
}
