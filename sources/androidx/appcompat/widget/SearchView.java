package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.internal.NativeProtocol;
import com.vungle.mediation.BuildConfig;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements androidx.appcompat.view.c {
    static final o E0;
    private final TextView.OnEditorActionListener A0;
    private final AdapterView.OnItemClickListener B0;
    private final AdapterView.OnItemSelectedListener C0;
    final SearchAutoComplete D;
    private TextWatcher D0;
    private final View E;
    private final View F;
    private final View G;
    final ImageView H;
    final ImageView I;
    final ImageView J;
    final ImageView K;
    private final View L;
    private q M;
    private Rect N;
    private Rect O;
    private int[] P;
    private int[] Q;
    private final ImageView R;
    private final Drawable S;
    private final int T;
    private final int U;
    private final Intent V;
    private final Intent W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private final CharSequence f843a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private m f844b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private l f845c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    View.OnFocusChangeListener f846d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private n f847e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private View.OnClickListener f848f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private boolean f849g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private boolean f850h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    a0.a f851i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private boolean f852j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private CharSequence f853k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private boolean f854l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private boolean f855m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private int f856n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private boolean f857o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private CharSequence f858p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private CharSequence f859q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private boolean f860r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private int f861s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    SearchableInfo f862t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private Bundle f863u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private final Runnable f864v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private Runnable f865w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private final WeakHashMap<String, Drawable.ConstantState> f866x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private final View.OnClickListener f867y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    View.OnKeyListener f868z0;

    public static class SearchAutoComplete extends androidx.appcompat.widget.d {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f869s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private SearchView f870t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private boolean f871u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        final Runnable f872v;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete.this.d();
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, f.a.f28992p);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i10 = configuration.screenWidthDp;
            int i11 = configuration.screenHeightDp;
            if (i10 >= 960 && i11 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i10 < 600) {
                return (i10 < 640 || i11 < 480) ? 160 : 192;
            }
            return 192;
        }

        void b() {
            if (Build.VERSION.SDK_INT < 29) {
                SearchView.E0.c(this);
                return;
            }
            k.b(this, 1);
            if (enoughToFilter()) {
                showDropDown();
            }
        }

        boolean c() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        void d() {
            if (this.f871u) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f871u = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f869s <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.d, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f871u) {
                removeCallbacks(this.f872v);
                post(this.f872v);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z10, int i10, Rect rect) {
            super.onFocusChanged(z10, i10, rect);
            this.f870t.Z();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i10, KeyEvent keyEvent) {
            if (i10 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f870t.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i10, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z10) {
            super.onWindowFocusChanged(z10);
            if (z10 && this.f870t.hasFocus() && getVisibility() == 0) {
                this.f871u = true;
                if (SearchView.M(getContext())) {
                    b();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        void setImeVisibility(boolean z10) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z10) {
                this.f871u = false;
                removeCallbacks(this.f872v);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f871u = true;
                    return;
                }
                this.f871u = false;
                removeCallbacks(this.f872v);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        void setSearchView(SearchView searchView) {
            this.f870t = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i10) {
            super.setThreshold(i10);
            this.f869s = i10;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            this.f872v = new a();
            this.f869s = getThreshold();
        }
    }

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            SearchView.this.Y(charSequence);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.f0();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.a aVar = SearchView.this.f851i0;
            if (aVar instanceof q0) {
                aVar.a(null);
            }
        }
    }

    class d implements View.OnFocusChangeListener {
        d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z10) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.f846d0;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z10);
            }
        }
    }

    class e implements View.OnLayoutChangeListener {
        e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            SearchView.this.B();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.H) {
                searchView.V();
                return;
            }
            if (view == searchView.J) {
                searchView.R();
                return;
            }
            if (view == searchView.I) {
                searchView.W();
            } else if (view == searchView.K) {
                searchView.a0();
            } else if (view == searchView.D) {
                searchView.H();
            }
        }
    }

    class g implements View.OnKeyListener {
        g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i10, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.f862t0 == null) {
                return false;
            }
            if (searchView.D.isPopupShowing() && SearchView.this.D.getListSelection() != -1) {
                return SearchView.this.X(view, i10, keyEvent);
            }
            if (SearchView.this.D.c() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i10 != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.P(0, null, searchView2.D.getText().toString());
            return true;
        }
    }

    class h implements TextView.OnEditorActionListener {
        h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            SearchView.this.W();
            return true;
        }
    }

    class i implements AdapterView.OnItemClickListener {
        i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            SearchView.this.S(i10, 0, null);
        }
    }

    class j implements AdapterView.OnItemSelectedListener {
        j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
            SearchView.this.T(i10);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    static class k {
        static void a(AutoCompleteTextView autoCompleteTextView) {
            autoCompleteTextView.refreshAutoCompleteResults();
        }

        static void b(SearchAutoComplete searchAutoComplete, int i10) {
            searchAutoComplete.setInputMethodMode(i10);
        }
    }

    public interface l {
        boolean onClose();
    }

    public interface m {
        boolean a(String str);

        boolean b(String str);
    }

    public interface n {
        boolean a(int i10);

        boolean b(int i10);
    }

    private static class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Method f884a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Method f885b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Method f886c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        o() {
            this.f884a = null;
            this.f885b = null;
            this.f886c = null;
            d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f884a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f885b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f886c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        private static void d() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f885b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void b(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f884a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void c(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f886c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
    }

    static class p extends b0.a {
        public static final Parcelable.Creator<p> CREATOR = new a();

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        boolean f887q;

        class a implements Parcelable.ClassLoaderCreator<p> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public p createFromParcel(Parcel parcel) {
                return new p(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public p createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new p(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public p[] newArray(int i10) {
                return new p[i10];
            }
        }

        p(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f887q + "}";
        }

        @Override // b0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeValue(Boolean.valueOf(this.f887q));
        }

        public p(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f887q = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    private static class q extends TouchDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f888a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Rect f889b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Rect f890c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Rect f891d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f892e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f893f;

        public q(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f892e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f889b = new Rect();
            this.f891d = new Rect();
            this.f890c = new Rect();
            a(rect, rect2);
            this.f888a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.f889b.set(rect);
            this.f891d.set(rect);
            Rect rect3 = this.f891d;
            int i10 = this.f892e;
            rect3.inset(-i10, -i10);
            this.f890c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z10;
            boolean z11;
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z12 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z11 = this.f893f;
                    if (z11 && !this.f891d.contains(x10, y10)) {
                        z12 = z11;
                        z10 = false;
                    }
                } else {
                    if (action == 3) {
                        z11 = this.f893f;
                        this.f893f = false;
                    }
                    z10 = true;
                    z12 = false;
                }
                z12 = z11;
                z10 = true;
            } else {
                if (this.f889b.contains(x10, y10)) {
                    this.f893f = true;
                    z10 = true;
                }
                z10 = true;
                z12 = false;
            }
            if (!z12) {
                return false;
            }
            if (!z10 || this.f890c.contains(x10, y10)) {
                Rect rect = this.f890c;
                motionEvent.setLocation(x10 - rect.left, y10 - rect.top);
            } else {
                motionEvent.setLocation(this.f888a.getWidth() / 2, this.f888a.getHeight() / 2);
            }
            return this.f888a.dispatchTouchEvent(motionEvent);
        }
    }

    static {
        E0 = Build.VERSION.SDK_INT < 29 ? new o() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private Intent C(String str, Uri uri, String str2, String str3, int i10, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f859q0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f863u0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i10 != 0) {
            intent.putExtra("action_key", i10);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f862t0.getSearchActivity());
        return intent;
    }

    private Intent D(Cursor cursor, int i10, String str) {
        int position;
        String strY;
        try {
            String strY2 = q0.y(cursor, "suggest_intent_action");
            if (strY2 == null) {
                strY2 = this.f862t0.getSuggestIntentAction();
            }
            if (strY2 == null) {
                strY2 = "android.intent.action.SEARCH";
            }
            String str2 = strY2;
            String strY3 = q0.y(cursor, "suggest_intent_data");
            if (strY3 == null) {
                strY3 = this.f862t0.getSuggestIntentData();
            }
            if (strY3 != null && (strY = q0.y(cursor, "suggest_intent_data_id")) != null) {
                strY3 = strY3 + "/" + Uri.encode(strY);
            }
            return C(str2, strY3 == null ? null : Uri.parse(strY3), q0.y(cursor, "suggest_intent_extra_data"), q0.y(cursor, "suggest_intent_query"), i10, str);
        } catch (RuntimeException e10) {
            try {
                position = cursor.getPosition();
            } catch (RuntimeException unused) {
                position = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e10);
            return null;
        }
    }

    private Intent E(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f863u0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private Intent F(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private void G() {
        this.D.dismissDropDown();
    }

    private void I(View view, Rect rect) {
        view.getLocationInWindow(this.P);
        getLocationInWindow(this.Q);
        int[] iArr = this.P;
        int i10 = iArr[1];
        int[] iArr2 = this.Q;
        int i11 = i10 - iArr2[1];
        int i12 = iArr[0] - iArr2[0];
        rect.set(i12, i11, view.getWidth() + i12, view.getHeight() + i11);
    }

    private CharSequence J(CharSequence charSequence) {
        if (!this.f849g0 || this.S == null) {
            return charSequence;
        }
        double textSize = this.D.getTextSize();
        Double.isNaN(textSize);
        int i10 = (int) (textSize * 1.25d);
        this.S.setBounds(0, 0, i10, i10);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.S), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private boolean K() {
        SearchableInfo searchableInfo = this.f862t0;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.f862t0.getVoiceSearchLaunchWebSearch()) {
            intent = this.V;
        } else if (this.f862t0.getVoiceSearchLaunchRecognizer()) {
            intent = this.W;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST) == null) ? false : true;
    }

    static boolean M(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private boolean N() {
        return (this.f852j0 || this.f857o0) && !L();
    }

    private void O(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e10) {
            Log.e("SearchView", "Failed launch activity: " + intent, e10);
        }
    }

    private boolean Q(int i10, int i11, String str) {
        Cursor cursorB = this.f851i0.b();
        if (cursorB == null || !cursorB.moveToPosition(i10)) {
            return false;
        }
        O(D(cursorB, i11, str));
        return true;
    }

    private void b0() {
        post(this.f864v0);
    }

    private void c0(int i10) {
        Editable text = this.D.getText();
        Cursor cursorB = this.f851i0.b();
        if (cursorB == null) {
            return;
        }
        if (!cursorB.moveToPosition(i10)) {
            setQuery(text);
            return;
        }
        CharSequence charSequenceD = this.f851i0.d(cursorB);
        if (charSequenceD != null) {
            setQuery(charSequenceD);
        } else {
            setQuery(text);
        }
    }

    private void e0() {
        boolean z10 = true;
        boolean z11 = !TextUtils.isEmpty(this.D.getText());
        if (!z11 && (!this.f849g0 || this.f860r0)) {
            z10 = false;
        }
        this.J.setVisibility(z10 ? 0 : 8);
        Drawable drawable = this.J.getDrawable();
        if (drawable != null) {
            drawable.setState(z11 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    private void g0() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.D;
        if (queryHint == null) {
            queryHint = BuildConfig.FLAVOR;
        }
        searchAutoComplete.setHint(J(queryHint));
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(f.d.f29018g);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(f.d.f29019h);
    }

    private void h0() {
        this.D.setThreshold(this.f862t0.getSuggestThreshold());
        this.D.setImeOptions(this.f862t0.getImeOptions());
        int inputType = this.f862t0.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.f862t0.getSuggestAuthority() != null) {
                inputType = inputType | NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST | 524288;
            }
        }
        this.D.setInputType(inputType);
        a0.a aVar = this.f851i0;
        if (aVar != null) {
            aVar.a(null);
        }
        if (this.f862t0.getSuggestAuthority() != null) {
            q0 q0Var = new q0(getContext(), this, this.f862t0, this.f866x0);
            this.f851i0 = q0Var;
            this.D.setAdapter(q0Var);
            ((q0) this.f851i0).H(this.f854l0 ? 2 : 1);
        }
    }

    private void i0() {
        this.G.setVisibility((N() && (this.I.getVisibility() == 0 || this.K.getVisibility() == 0)) ? 0 : 8);
    }

    private void j0(boolean z10) {
        this.I.setVisibility((this.f852j0 && N() && hasFocus() && (z10 || !this.f857o0)) ? 0 : 8);
    }

    private void k0(boolean z10) {
        this.f850h0 = z10;
        int i10 = z10 ? 0 : 8;
        boolean z11 = !TextUtils.isEmpty(this.D.getText());
        this.H.setVisibility(i10);
        j0(z11);
        this.E.setVisibility(z10 ? 8 : 0);
        this.R.setVisibility((this.R.getDrawable() == null || this.f849g0) ? 8 : 0);
        e0();
        l0(!z11);
        i0();
    }

    private void l0(boolean z10) {
        int i10 = 8;
        if (this.f857o0 && !L() && z10) {
            this.I.setVisibility(8);
            i10 = 0;
        }
        this.K.setVisibility(i10);
    }

    private void setQuery(CharSequence charSequence) {
        this.D.setText(charSequence);
        this.D.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    void B() {
        if (this.L.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.F.getPaddingLeft();
            Rect rect = new Rect();
            boolean zB = f1.b(this);
            int dimensionPixelSize = this.f849g0 ? resources.getDimensionPixelSize(f.d.f29016e) + resources.getDimensionPixelSize(f.d.f29017f) : 0;
            this.D.getDropDownBackground().getPadding(rect);
            this.D.setDropDownHorizontalOffset(zB ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.D.setDropDownWidth((((this.L.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    void H() {
        if (Build.VERSION.SDK_INT >= 29) {
            k.a(this.D);
            return;
        }
        o oVar = E0;
        oVar.b(this.D);
        oVar.a(this.D);
    }

    public boolean L() {
        return this.f850h0;
    }

    void P(int i10, String str, String str2) {
        getContext().startActivity(C("android.intent.action.SEARCH", null, null, str2, i10, str));
    }

    void R() {
        if (!TextUtils.isEmpty(this.D.getText())) {
            this.D.setText(BuildConfig.FLAVOR);
            this.D.requestFocus();
            this.D.setImeVisibility(true);
        } else if (this.f849g0) {
            l lVar = this.f845c0;
            if (lVar == null || !lVar.onClose()) {
                clearFocus();
                k0(true);
            }
        }
    }

    boolean S(int i10, int i11, String str) {
        n nVar = this.f847e0;
        if (nVar != null && nVar.b(i10)) {
            return false;
        }
        Q(i10, 0, null);
        this.D.setImeVisibility(false);
        G();
        return true;
    }

    boolean T(int i10) {
        n nVar = this.f847e0;
        if (nVar != null && nVar.a(i10)) {
            return false;
        }
        c0(i10);
        return true;
    }

    protected void U(CharSequence charSequence) {
        setQuery(charSequence);
    }

    void V() {
        k0(false);
        this.D.requestFocus();
        this.D.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f848f0;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    void W() {
        Editable text = this.D.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        m mVar = this.f844b0;
        if (mVar == null || !mVar.b(text.toString())) {
            if (this.f862t0 != null) {
                P(0, null, text.toString());
            }
            this.D.setImeVisibility(false);
            G();
        }
    }

    boolean X(View view, int i10, KeyEvent keyEvent) {
        if (this.f862t0 != null && this.f851i0 != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i10 == 66 || i10 == 84 || i10 == 61) {
                return S(this.D.getListSelection(), 0, null);
            }
            if (i10 == 21 || i10 == 22) {
                this.D.setSelection(i10 == 21 ? 0 : this.D.length());
                this.D.setListSelection(0);
                this.D.clearListSelection();
                this.D.b();
                return true;
            }
            if (i10 == 19) {
                this.D.getListSelection();
                return false;
            }
        }
        return false;
    }

    void Y(CharSequence charSequence) {
        Editable text = this.D.getText();
        this.f859q0 = text;
        boolean z10 = !TextUtils.isEmpty(text);
        j0(z10);
        l0(!z10);
        e0();
        i0();
        if (this.f844b0 != null && !TextUtils.equals(charSequence, this.f858p0)) {
            this.f844b0.a(charSequence.toString());
        }
        this.f858p0 = charSequence.toString();
    }

    void Z() {
        k0(L());
        b0();
        if (this.D.hasFocus()) {
            H();
        }
    }

    void a0() {
        SearchableInfo searchableInfo = this.f862t0;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(F(this.V, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(E(this.W, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }

    @Override // androidx.appcompat.view.c
    public void c() {
        if (this.f860r0) {
            return;
        }
        this.f860r0 = true;
        int imeOptions = this.D.getImeOptions();
        this.f861s0 = imeOptions;
        this.D.setImeOptions(imeOptions | 33554432);
        this.D.setText(BuildConfig.FLAVOR);
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f855m0 = true;
        super.clearFocus();
        this.D.clearFocus();
        this.D.setImeVisibility(false);
        this.f855m0 = false;
    }

    public void d0(CharSequence charSequence, boolean z10) {
        this.D.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.D;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.f859q0 = charSequence;
        }
        if (!z10 || TextUtils.isEmpty(charSequence)) {
            return;
        }
        W();
    }

    @Override // androidx.appcompat.view.c
    public void f() {
        d0(BuildConfig.FLAVOR, false);
        clearFocus();
        k0(true);
        this.D.setImeOptions(this.f861s0);
        this.f860r0 = false;
    }

    void f0() {
        int[] iArr = this.D.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.F.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.G.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public int getImeOptions() {
        return this.D.getImeOptions();
    }

    public int getInputType() {
        return this.D.getInputType();
    }

    public int getMaxWidth() {
        return this.f856n0;
    }

    public CharSequence getQuery() {
        return this.D.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f853k0;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.f862t0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f843a0 : getContext().getText(this.f862t0.getHintId());
    }

    int getSuggestionCommitIconResId() {
        return this.U;
    }

    int getSuggestionRowLayout() {
        return this.T;
    }

    public a0.a getSuggestionsAdapter() {
        return this.f851i0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f864v0);
        post(this.f865w0);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            I(this.D, this.N);
            Rect rect = this.O;
            Rect rect2 = this.N;
            rect.set(rect2.left, 0, rect2.right, i13 - i11);
            q qVar = this.M;
            if (qVar != null) {
                qVar.a(this.O, this.N);
                return;
            }
            q qVar2 = new q(this.O, this.N, this.D);
            this.M = qVar2;
            setTouchDelegate(qVar2);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        if (L()) {
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == Integer.MIN_VALUE) {
            int i13 = this.f856n0;
            size = i13 > 0 ? Math.min(i13, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.f856n0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i12 = this.f856n0) > 0) {
            size = Math.min(i12, size);
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof p)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        p pVar = (p) parcelable;
        super.onRestoreInstanceState(pVar.h());
        k0(pVar.f887q);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        p pVar = new p(super.onSaveInstanceState());
        pVar.f887q = L();
        return pVar;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        b0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i10, Rect rect) {
        if (this.f855m0 || !isFocusable()) {
            return false;
        }
        if (L()) {
            return super.requestFocus(i10, rect);
        }
        boolean zRequestFocus = this.D.requestFocus(i10, rect);
        if (zRequestFocus) {
            k0(false);
        }
        return zRequestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.f863u0 = bundle;
    }

    public void setIconified(boolean z10) {
        if (z10) {
            R();
        } else {
            V();
        }
    }

    public void setIconifiedByDefault(boolean z10) {
        if (this.f849g0 == z10) {
            return;
        }
        this.f849g0 = z10;
        k0(z10);
        g0();
    }

    public void setImeOptions(int i10) {
        this.D.setImeOptions(i10);
    }

    public void setInputType(int i10) {
        this.D.setInputType(i10);
    }

    public void setMaxWidth(int i10) {
        this.f856n0 = i10;
        requestLayout();
    }

    public void setOnCloseListener(l lVar) {
        this.f845c0 = lVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f846d0 = onFocusChangeListener;
    }

    public void setOnQueryTextListener(m mVar) {
        this.f844b0 = mVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f848f0 = onClickListener;
    }

    public void setOnSuggestionListener(n nVar) {
        this.f847e0 = nVar;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f853k0 = charSequence;
        g0();
    }

    public void setQueryRefinementEnabled(boolean z10) {
        this.f854l0 = z10;
        a0.a aVar = this.f851i0;
        if (aVar instanceof q0) {
            ((q0) aVar).H(z10 ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f862t0 = searchableInfo;
        if (searchableInfo != null) {
            h0();
            g0();
        }
        boolean zK = K();
        this.f857o0 = zK;
        if (zK) {
            this.D.setPrivateImeOptions("nm");
        }
        k0(L());
    }

    public void setSubmitButtonEnabled(boolean z10) {
        this.f852j0 = z10;
        k0(L());
    }

    public void setSuggestionsAdapter(a0.a aVar) {
        this.f851i0 = aVar;
        this.D.setAdapter(aVar);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, f.a.I);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.N = new Rect();
        this.O = new Rect();
        this.P = new int[2];
        this.Q = new int[2];
        this.f864v0 = new b();
        this.f865w0 = new c();
        this.f866x0 = new WeakHashMap<>();
        f fVar = new f();
        this.f867y0 = fVar;
        this.f868z0 = new g();
        h hVar = new h();
        this.A0 = hVar;
        i iVar = new i();
        this.B0 = iVar;
        j jVar = new j();
        this.C0 = jVar;
        this.D0 = new a();
        int[] iArr = f.j.f29143f2;
        w0 w0VarV = w0.v(context, attributeSet, iArr, i10, 0);
        androidx.core.view.a0.o0(this, context, iArr, attributeSet, w0VarV.r(), i10, 0);
        LayoutInflater.from(context).inflate(w0VarV.n(f.j.f29193p2, f.g.f29096r), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(f.f.D);
        this.D = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.E = findViewById(f.f.f29078z);
        View viewFindViewById = findViewById(f.f.C);
        this.F = viewFindViewById;
        View viewFindViewById2 = findViewById(f.f.J);
        this.G = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(f.f.f29076x);
        this.H = imageView;
        ImageView imageView2 = (ImageView) findViewById(f.f.A);
        this.I = imageView2;
        ImageView imageView3 = (ImageView) findViewById(f.f.f29077y);
        this.J = imageView3;
        ImageView imageView4 = (ImageView) findViewById(f.f.E);
        this.K = imageView4;
        ImageView imageView5 = (ImageView) findViewById(f.f.B);
        this.R = imageView5;
        androidx.core.view.a0.u0(viewFindViewById, w0VarV.g(f.j.f29198q2));
        androidx.core.view.a0.u0(viewFindViewById2, w0VarV.g(f.j.f29218u2));
        int i11 = f.j.f29213t2;
        imageView.setImageDrawable(w0VarV.g(i11));
        imageView2.setImageDrawable(w0VarV.g(f.j.f29183n2));
        imageView3.setImageDrawable(w0VarV.g(f.j.f29168k2));
        imageView4.setImageDrawable(w0VarV.g(f.j.f29228w2));
        imageView5.setImageDrawable(w0VarV.g(i11));
        this.S = w0VarV.g(f.j.f29208s2);
        z0.a(imageView, getResources().getString(f.h.f29110l));
        this.T = w0VarV.n(f.j.f29223v2, f.g.f29095q);
        this.U = w0VarV.n(f.j.f29173l2, 0);
        imageView.setOnClickListener(fVar);
        imageView3.setOnClickListener(fVar);
        imageView2.setOnClickListener(fVar);
        imageView4.setOnClickListener(fVar);
        searchAutoComplete.setOnClickListener(fVar);
        searchAutoComplete.addTextChangedListener(this.D0);
        searchAutoComplete.setOnEditorActionListener(hVar);
        searchAutoComplete.setOnItemClickListener(iVar);
        searchAutoComplete.setOnItemSelectedListener(jVar);
        searchAutoComplete.setOnKeyListener(this.f868z0);
        searchAutoComplete.setOnFocusChangeListener(new d());
        setIconifiedByDefault(w0VarV.a(f.j.f29188o2, true));
        int iF = w0VarV.f(f.j.f29153h2, -1);
        if (iF != -1) {
            setMaxWidth(iF);
        }
        this.f843a0 = w0VarV.p(f.j.f29178m2);
        this.f853k0 = w0VarV.p(f.j.f29203r2);
        int iK = w0VarV.k(f.j.f29163j2, -1);
        if (iK != -1) {
            setImeOptions(iK);
        }
        int iK2 = w0VarV.k(f.j.f29158i2, -1);
        if (iK2 != -1) {
            setInputType(iK2);
        }
        setFocusable(w0VarV.a(f.j.f29148g2, true));
        w0VarV.w();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.V = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.W = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.L = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new e());
        }
        k0(this.f849g0);
        g0();
    }
}
