package androidx.core.view.accessibility;

import android.R;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.accessibility.f;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: AccessibilityNodeInfoCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f2421d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AccessibilityNodeInfo f2422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2423b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2424c = -1;

    /* JADX INFO: compiled from: AccessibilityNodeInfoCompat.java */
    public static class a {
        public static final a A;
        public static final a B;
        public static final a C;
        public static final a D;
        public static final a E;
        public static final a F;
        public static final a G;
        public static final a H;
        public static final a I;
        public static final a J;
        public static final a K;
        public static final a L;
        public static final a M;
        public static final a N;
        public static final a O;
        public static final a P;
        public static final a Q;
        public static final a R;
        public static final a S;
        public static final a T;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f2425e = new a(1, null);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final a f2426f = new a(2, null);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final a f2427g = new a(4, null);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f2428h = new a(8, null);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final a f2429i = new a(16, null);

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final a f2430j = new a(32, null);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final a f2431k = new a(64, null);

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final a f2432l = new a(128, null);

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final a f2433m = new a(256, (CharSequence) null, (Class<? extends f.a>) f.b.class);

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final a f2434n = new a(512, (CharSequence) null, (Class<? extends f.a>) f.b.class);

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final a f2435o = new a(1024, (CharSequence) null, (Class<? extends f.a>) f.c.class);

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final a f2436p = new a(2048, (CharSequence) null, (Class<? extends f.a>) f.c.class);

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final a f2437q = new a(4096, null);

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final a f2438r = new a(Utility.DEFAULT_STREAM_BUFFER_SIZE, null);

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public static final a f2439s = new a(16384, null);

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public static final a f2440t = new a(32768, null);

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public static final a f2441u = new a(NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST, null);

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public static final a f2442v = new a(131072, (CharSequence) null, (Class<? extends f.a>) f.g.class);

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public static final a f2443w = new a(262144, null);

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static final a f2444x = new a(524288, null);

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public static final a f2445y = new a(1048576, null);

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public static final a f2446z = new a(2097152, (CharSequence) null, (Class<? extends f.a>) f.h.class);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f2447a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f2448b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Class<? extends f.a> f2449c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected final f f2450d;

        static {
            int i10 = Build.VERSION.SDK_INT;
            A = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, R.id.accessibilityActionShowOnScreen, null, null, null);
            B = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, R.id.accessibilityActionScrollToPosition, null, null, f.e.class);
            C = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, R.id.accessibilityActionScrollUp, null, null, null);
            D = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, R.id.accessibilityActionScrollLeft, null, null, null);
            E = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, R.id.accessibilityActionScrollDown, null, null, null);
            F = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, R.id.accessibilityActionScrollRight, null, null, null);
            G = new a(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
            H = new a(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null, null, null);
            I = new a(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
            J = new a(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null, null, null);
            K = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, R.id.accessibilityActionContextClick, null, null, null);
            L = new a(i10 >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, R.id.accessibilityActionSetProgress, null, null, f.C0040f.class);
            M = new a(i10 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, f.d.class);
            N = new a(i10 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null, null, null);
            O = new a(i10 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null, null, null);
            P = new a(i10 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
            Q = new a(i10 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null, null, null);
            R = new a(i10 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START : null, R.id.accessibilityActionDragStart, null, null, null);
            S = new a(i10 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP : null, R.id.accessibilityActionDragDrop, null, null, null);
            T = new a(i10 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL : null, R.id.accessibilityActionDragCancel, null, null, null);
        }

        public a(int i10, CharSequence charSequence) {
            this(null, i10, charSequence, null, null);
        }

        public a a(CharSequence charSequence, f fVar) {
            return new a(null, this.f2448b, charSequence, fVar, this.f2449c);
        }

        public int b() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f2447a).getId();
            }
            return 0;
        }

        public CharSequence c() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f2447a).getLabel();
            }
            return null;
        }

        public boolean d(View view, Bundle bundle) {
            f.a aVarNewInstance;
            if (this.f2450d == null) {
                return false;
            }
            f.a aVar = null;
            Class<? extends f.a> cls = this.f2449c;
            if (cls != null) {
                try {
                    aVarNewInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception e10) {
                    e = e10;
                }
                try {
                    aVarNewInstance.a(bundle);
                    aVar = aVarNewInstance;
                } catch (Exception e11) {
                    e = e11;
                    aVar = aVarNewInstance;
                    Class<? extends f.a> cls2 = this.f2449c;
                    Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: " + (cls2 == null ? "null" : cls2.getName()), e);
                }
            }
            return this.f2450d.a(view, aVar);
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            Object obj2 = this.f2447a;
            return obj2 == null ? aVar.f2447a == null : obj2.equals(aVar.f2447a);
        }

        public int hashCode() {
            Object obj = this.f2447a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public a(int i10, CharSequence charSequence, f fVar) {
            this(null, i10, charSequence, fVar, null);
        }

        a(Object obj) {
            this(obj, 0, null, null, null);
        }

        private a(int i10, CharSequence charSequence, Class<? extends f.a> cls) {
            this(null, i10, charSequence, null, cls);
        }

        a(Object obj, int i10, CharSequence charSequence, f fVar, Class<? extends f.a> cls) {
            this.f2448b = i10;
            this.f2450d = fVar;
            if (Build.VERSION.SDK_INT >= 21 && obj == null) {
                this.f2447a = new AccessibilityNodeInfo.AccessibilityAction(i10, charSequence);
            } else {
                this.f2447a = obj;
            }
            this.f2449c = cls;
        }
    }

    /* JADX INFO: compiled from: AccessibilityNodeInfoCompat.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f2451a;

        b(Object obj) {
            this.f2451a = obj;
        }

        public static b a(int i10, int i11, boolean z10, int i12) {
            int i13 = Build.VERSION.SDK_INT;
            return i13 >= 21 ? new b(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, z10, i12)) : i13 >= 19 ? new b(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, z10)) : new b(null);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.accessibility.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AccessibilityNodeInfoCompat.java */
    public static class C0039c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f2452a;

        C0039c(Object obj) {
            this.f2452a = obj;
        }

        public static C0039c a(int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
            int i14 = Build.VERSION.SDK_INT;
            return i14 >= 21 ? new C0039c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i10, i11, i12, i13, z10, z11)) : i14 >= 19 ? new C0039c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i10, i11, i12, i13, z10)) : new C0039c(null);
        }
    }

    private c(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f2422a = accessibilityNodeInfo;
    }

    public static c L() {
        return x0(AccessibilityNodeInfo.obtain());
    }

    public static c M(View view) {
        return x0(AccessibilityNodeInfo.obtain(view));
    }

    public static c N(c cVar) {
        return x0(AccessibilityNodeInfo.obtain(cVar.f2422a));
    }

    private void Q(View view) {
        SparseArray<WeakReference<ClickableSpan>> sparseArrayU = u(view);
        if (sparseArrayU != null) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < sparseArrayU.size(); i10++) {
                if (sparseArrayU.valueAt(i10).get() == null) {
                    arrayList.add(Integer.valueOf(i10));
                }
            }
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                sparseArrayU.remove(((Integer) arrayList.get(i11)).intValue());
            }
        }
    }

    private void S(int i10, boolean z10) {
        Bundle bundleR = r();
        if (bundleR != null) {
            int i11 = bundleR.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i10 ^ (-1));
            if (!z10) {
                i10 = 0;
            }
            bundleR.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i10 | i11);
        }
    }

    private void d(ClickableSpan clickableSpan, Spanned spanned, int i10) {
        g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i10));
    }

    private void f() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2422a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.f2422a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.f2422a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.f2422a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    private List<Integer> g(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f2422a.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.f2422a.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    private static String i(int i10) {
        if (i10 == 1) {
            return "ACTION_FOCUS";
        }
        if (i10 == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i10) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case Utility.DEFAULT_STREAM_BUFFER_SIZE /* 8192 */:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST /* 65536 */:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            default:
                switch (i10) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i10) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                switch (i10) {
                                    case R.id.accessibilityActionImeEnter:
                                        return "ACTION_IME_ENTER";
                                    case R.id.accessibilityActionDragStart:
                                        return "ACTION_DRAG_START";
                                    case R.id.accessibilityActionDragDrop:
                                        return "ACTION_DRAG_DROP";
                                    case R.id.accessibilityActionDragCancel:
                                        return "ACTION_DRAG_CANCEL";
                                    default:
                                        return "ACTION_UNKNOWN";
                                }
                        }
                }
        }
    }

    private boolean k(int i10) {
        Bundle bundleR = r();
        return bundleR != null && (bundleR.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i10) == i10;
    }

    public static ClickableSpan[] p(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    private SparseArray<WeakReference<ClickableSpan>> s(View view) {
        SparseArray<WeakReference<ClickableSpan>> sparseArrayU = u(view);
        if (sparseArrayU != null) {
            return sparseArrayU;
        }
        SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
        view.setTag(w.c.I, sparseArray);
        return sparseArray;
    }

    private SparseArray<WeakReference<ClickableSpan>> u(View view) {
        return (SparseArray) view.getTag(w.c.I);
    }

    public static c x0(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new c(accessibilityNodeInfo);
    }

    private boolean y() {
        return !g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    private int z(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                if (clickableSpan.equals(sparseArray.valueAt(i10).get())) {
                    return sparseArray.keyAt(i10);
                }
            }
        }
        int i11 = f2421d;
        f2421d = i11 + 1;
        return i11;
    }

    public boolean A() {
        return this.f2422a.isCheckable();
    }

    public boolean B() {
        return this.f2422a.isChecked();
    }

    public boolean C() {
        return this.f2422a.isClickable();
    }

    public boolean D() {
        return this.f2422a.isEnabled();
    }

    public boolean E() {
        return this.f2422a.isFocusable();
    }

    public boolean F() {
        return this.f2422a.isFocused();
    }

    public boolean G() {
        return this.f2422a.isLongClickable();
    }

    public boolean H() {
        return this.f2422a.isPassword();
    }

    public boolean I() {
        return this.f2422a.isScrollable();
    }

    public boolean J() {
        return this.f2422a.isSelected();
    }

    public boolean K() {
        return Build.VERSION.SDK_INT >= 26 ? this.f2422a.isShowingHintText() : k(4);
    }

    public boolean O(int i10, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f2422a.performAction(i10, bundle);
        }
        return false;
    }

    public void P() {
        this.f2422a.recycle();
    }

    public void R(boolean z10) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2422a.setAccessibilityFocused(z10);
        }
    }

    @Deprecated
    public void T(Rect rect) {
        this.f2422a.setBoundsInParent(rect);
    }

    public void U(Rect rect) {
        this.f2422a.setBoundsInScreen(rect);
    }

    public void V(boolean z10) {
        this.f2422a.setCheckable(z10);
    }

    public void W(boolean z10) {
        this.f2422a.setChecked(z10);
    }

    public void X(CharSequence charSequence) {
        this.f2422a.setClassName(charSequence);
    }

    public void Y(boolean z10) {
        this.f2422a.setClickable(z10);
    }

    public void Z(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2422a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((b) obj).f2451a);
        }
    }

    public void a(int i10) {
        this.f2422a.addAction(i10);
    }

    public void a0(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2422a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((C0039c) obj).f2452a);
        }
    }

    public void b(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f2422a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f2447a);
        }
    }

    public void b0(CharSequence charSequence) {
        this.f2422a.setContentDescription(charSequence);
    }

    public void c(View view, int i10) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2422a.addChild(view, i10);
        }
    }

    public void c0(boolean z10) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2422a.setDismissable(z10);
        }
    }

    public void d0(boolean z10) {
        this.f2422a.setEnabled(z10);
    }

    public void e(CharSequence charSequence, View view) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 19 || i10 >= 26) {
            return;
        }
        f();
        Q(view);
        ClickableSpan[] clickableSpanArrP = p(charSequence);
        if (clickableSpanArrP == null || clickableSpanArrP.length <= 0) {
            return;
        }
        r().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", w.c.f35869a);
        SparseArray<WeakReference<ClickableSpan>> sparseArrayS = s(view);
        for (int i11 = 0; i11 < clickableSpanArrP.length; i11++) {
            int iZ = z(clickableSpanArrP[i11], sparseArrayS);
            sparseArrayS.put(iZ, new WeakReference<>(clickableSpanArrP[i11]));
            d(clickableSpanArrP[i11], (Spanned) charSequence, iZ);
        }
    }

    public void e0(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f2422a.setError(charSequence);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2422a;
        if (accessibilityNodeInfo == null) {
            if (cVar.f2422a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(cVar.f2422a)) {
            return false;
        }
        return this.f2424c == cVar.f2424c && this.f2423b == cVar.f2423b;
    }

    public void f0(boolean z10) {
        this.f2422a.setFocusable(z10);
    }

    public void g0(boolean z10) {
        this.f2422a.setFocused(z10);
    }

    public List<a> h() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = Build.VERSION.SDK_INT >= 21 ? this.f2422a.getActionList() : null;
        if (actionList == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = actionList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new a(actionList.get(i10)));
        }
        return arrayList;
    }

    public void h0(boolean z10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2422a.setHeading(z10);
        } else {
            S(2, z10);
        }
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2422a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public void i0(CharSequence charSequence) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            this.f2422a.setHintText(charSequence);
        } else if (i10 >= 19) {
            this.f2422a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    public int j() {
        return this.f2422a.getActions();
    }

    public void j0(int i10) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f2422a.setMaxTextLength(i10);
        }
    }

    public void k0(CharSequence charSequence) {
        this.f2422a.setPackageName(charSequence);
    }

    @Deprecated
    public void l(Rect rect) {
        this.f2422a.getBoundsInParent(rect);
    }

    public void l0(CharSequence charSequence) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            this.f2422a.setPaneTitle(charSequence);
        } else if (i10 >= 19) {
            this.f2422a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    public void m(Rect rect) {
        this.f2422a.getBoundsInScreen(rect);
    }

    public void m0(View view) {
        this.f2423b = -1;
        this.f2422a.setParent(view);
    }

    public int n() {
        return this.f2422a.getChildCount();
    }

    public void n0(View view, int i10) {
        this.f2423b = i10;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2422a.setParent(view, i10);
        }
    }

    public CharSequence o() {
        return this.f2422a.getClassName();
    }

    public void o0(boolean z10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2422a.setScreenReaderFocusable(z10);
        } else {
            S(1, z10);
        }
    }

    public void p0(boolean z10) {
        this.f2422a.setScrollable(z10);
    }

    public CharSequence q() {
        return this.f2422a.getContentDescription();
    }

    public void q0(boolean z10) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2422a.setShowingHintText(z10);
        } else {
            S(4, z10);
        }
    }

    public Bundle r() {
        return Build.VERSION.SDK_INT >= 19 ? this.f2422a.getExtras() : new Bundle();
    }

    public void r0(View view, int i10) {
        this.f2424c = i10;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2422a.setSource(view, i10);
        }
    }

    public void s0(CharSequence charSequence) {
        if (androidx.core.os.a.b()) {
            this.f2422a.setStateDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.f2422a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
    }

    public CharSequence t() {
        return this.f2422a.getPackageName();
    }

    public void t0(CharSequence charSequence) {
        this.f2422a.setText(charSequence);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        l(rect);
        sb.append("; boundsInParent: " + rect);
        m(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(t());
        sb.append("; className: ");
        sb.append(o());
        sb.append("; text: ");
        sb.append(v());
        sb.append("; contentDescription: ");
        sb.append(q());
        sb.append("; viewId: ");
        sb.append(x());
        sb.append("; uniqueId: ");
        sb.append(w());
        sb.append("; checkable: ");
        sb.append(A());
        sb.append("; checked: ");
        sb.append(B());
        sb.append("; focusable: ");
        sb.append(E());
        sb.append("; focused: ");
        sb.append(F());
        sb.append("; selected: ");
        sb.append(J());
        sb.append("; clickable: ");
        sb.append(C());
        sb.append("; longClickable: ");
        sb.append(G());
        sb.append("; enabled: ");
        sb.append(D());
        sb.append("; password: ");
        sb.append(H());
        sb.append("; scrollable: " + I());
        sb.append("; [");
        if (Build.VERSION.SDK_INT >= 21) {
            List<a> listH = h();
            for (int i10 = 0; i10 < listH.size(); i10++) {
                a aVar = listH.get(i10);
                String strI = i(aVar.b());
                if (strI.equals("ACTION_UNKNOWN") && aVar.c() != null) {
                    strI = aVar.c().toString();
                }
                sb.append(strI);
                if (i10 != listH.size() - 1) {
                    sb.append(", ");
                }
            }
        } else {
            int iJ = j();
            while (iJ != 0) {
                int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(iJ);
                iJ &= iNumberOfTrailingZeros ^ (-1);
                sb.append(i(iNumberOfTrailingZeros));
                if (iJ != 0) {
                    sb.append(", ");
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public void u0(View view) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.f2422a.setTraversalAfter(view);
        }
    }

    public CharSequence v() {
        if (!y()) {
            return this.f2422a.getText();
        }
        List<Integer> listG = g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List<Integer> listG2 = g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List<Integer> listG3 = g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List<Integer> listG4 = g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.f2422a.getText(), 0, this.f2422a.getText().length()));
        for (int i10 = 0; i10 < listG.size(); i10++) {
            spannableString.setSpan(new androidx.core.view.accessibility.a(listG4.get(i10).intValue(), this, r().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), listG.get(i10).intValue(), listG2.get(i10).intValue(), listG3.get(i10).intValue());
        }
        return spannableString;
    }

    public void v0(boolean z10) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2422a.setVisibleToUser(z10);
        }
    }

    public String w() {
        if (androidx.core.os.a.d()) {
            return this.f2422a.getUniqueId();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f2422a.getExtras().getString("androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY");
        }
        return null;
    }

    public AccessibilityNodeInfo w0() {
        return this.f2422a;
    }

    public String x() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f2422a.getViewIdResourceName();
        }
        return null;
    }
}
