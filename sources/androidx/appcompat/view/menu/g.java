package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.c0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: MenuBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public class g implements x.a {
    private static final int[] A = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources f671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f674e;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ContextMenu.ContextMenuInfo f682m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    CharSequence f683n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Drawable f684o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    View f685p;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private i f693x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f695z;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f681l = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f686q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f687r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f688s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f689t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f690u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ArrayList<i> f691v = new ArrayList<>();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private CopyOnWriteArrayList<WeakReference<m>> f692w = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f694y = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<i> f675f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList<i> f676g = new ArrayList<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f677h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ArrayList<i> f678i = new ArrayList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ArrayList<i> f679j = new ArrayList<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f680k = true;

    /* JADX INFO: compiled from: MenuBuilder.java */
    public interface a {
        boolean a(g gVar, MenuItem menuItem);

        void b(g gVar);
    }

    /* JADX INFO: compiled from: MenuBuilder.java */
    public interface b {
        boolean a(i iVar);
    }

    public g(Context context) {
        this.f670a = context;
        this.f671b = context.getResources();
        b0(true);
    }

    private static int B(int i10) {
        int i11 = ((-65536) & i10) >> 16;
        if (i11 >= 0) {
            int[] iArr = A;
            if (i11 < iArr.length) {
                return (i10 & 65535) | (iArr[i11] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    private void N(int i10, boolean z10) {
        if (i10 < 0 || i10 >= this.f675f.size()) {
            return;
        }
        this.f675f.remove(i10);
        if (z10) {
            K(true);
        }
    }

    private void W(int i10, CharSequence charSequence, int i11, Drawable drawable, View view) {
        Resources resourcesC = C();
        if (view != null) {
            this.f685p = view;
            this.f683n = null;
            this.f684o = null;
        } else {
            if (i10 > 0) {
                this.f683n = resourcesC.getText(i10);
            } else if (charSequence != null) {
                this.f683n = charSequence;
            }
            if (i11 > 0) {
                this.f684o = androidx.core.content.a.f(u(), i11);
            } else if (drawable != null) {
                this.f684o = drawable;
            }
            this.f685p = null;
        }
        K(false);
    }

    private void b0(boolean z10) {
        this.f673d = z10 && this.f671b.getConfiguration().keyboard != 1 && c0.e(ViewConfiguration.get(this.f670a), this.f670a);
    }

    private i g(int i10, int i11, int i12, int i13, CharSequence charSequence, int i14) {
        return new i(this, i10, i11, i12, i13, charSequence, i14);
    }

    private void i(boolean z10) {
        if (this.f692w.isEmpty()) {
            return;
        }
        d0();
        for (WeakReference<m> weakReference : this.f692w) {
            m mVar = weakReference.get();
            if (mVar == null) {
                this.f692w.remove(weakReference);
            } else {
                mVar.c(z10);
            }
        }
        c0();
    }

    private boolean j(r rVar, m mVar) {
        if (this.f692w.isEmpty()) {
            return false;
        }
        boolean zK = mVar != null ? mVar.k(rVar) : false;
        for (WeakReference<m> weakReference : this.f692w) {
            m mVar2 = weakReference.get();
            if (mVar2 == null) {
                this.f692w.remove(weakReference);
            } else if (!zK) {
                zK = mVar2.k(rVar);
            }
        }
        return zK;
    }

    private static int n(ArrayList<i> arrayList, int i10) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).f() <= i10) {
                return size + 1;
            }
        }
        return 0;
    }

    boolean A() {
        return this.f689t;
    }

    Resources C() {
        return this.f671b;
    }

    public g D() {
        return this;
    }

    public ArrayList<i> E() {
        if (!this.f677h) {
            return this.f676g;
        }
        this.f676g.clear();
        int size = this.f675f.size();
        for (int i10 = 0; i10 < size; i10++) {
            i iVar = this.f675f.get(i10);
            if (iVar.isVisible()) {
                this.f676g.add(iVar);
            }
        }
        this.f677h = false;
        this.f680k = true;
        return this.f676g;
    }

    public boolean F() {
        return this.f694y;
    }

    boolean G() {
        return this.f672c;
    }

    public boolean H() {
        return this.f673d;
    }

    void I(i iVar) {
        this.f680k = true;
        K(true);
    }

    void J(i iVar) {
        this.f677h = true;
        K(true);
    }

    public void K(boolean z10) {
        if (this.f686q) {
            this.f687r = true;
            if (z10) {
                this.f688s = true;
                return;
            }
            return;
        }
        if (z10) {
            this.f677h = true;
            this.f680k = true;
        }
        i(z10);
    }

    public boolean L(MenuItem menuItem, int i10) {
        return M(menuItem, null, i10);
    }

    public boolean M(MenuItem menuItem, m mVar, int i10) {
        i iVar = (i) menuItem;
        if (iVar == null || !iVar.isEnabled()) {
            return false;
        }
        boolean zK = iVar.k();
        androidx.core.view.b bVarB = iVar.b();
        boolean z10 = bVarB != null && bVarB.a();
        if (iVar.j()) {
            zK |= iVar.expandActionView();
            if (zK) {
                e(true);
            }
        } else if (iVar.hasSubMenu() || z10) {
            if ((i10 & 4) == 0) {
                e(false);
            }
            if (!iVar.hasSubMenu()) {
                iVar.x(new r(u(), this, iVar));
            }
            r rVar = (r) iVar.getSubMenu();
            if (z10) {
                bVarB.f(rVar);
            }
            zK |= j(rVar, mVar);
            if (!zK) {
                e(true);
            }
        } else if ((i10 & 1) == 0) {
            e(true);
        }
        return zK;
    }

    public void O(m mVar) {
        for (WeakReference<m> weakReference : this.f692w) {
            m mVar2 = weakReference.get();
            if (mVar2 == null || mVar2 == mVar) {
                this.f692w.remove(weakReference);
            }
        }
    }

    public void P(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(t());
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = getItem(i10);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((r) item.getSubMenu()).P(bundle);
            }
        }
        int i11 = bundle.getInt("android:menu:expandedactionview");
        if (i11 <= 0 || (menuItemFindItem = findItem(i11)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    public void Q(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = getItem(i10);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((r) item.getSubMenu()).Q(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(t(), sparseArray);
        }
    }

    public void R(a aVar) {
        this.f674e = aVar;
    }

    public g S(int i10) {
        this.f681l = i10;
        return this;
    }

    void T(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f675f.size();
        d0();
        for (int i10 = 0; i10 < size; i10++) {
            i iVar = this.f675f.get(i10);
            if (iVar.getGroupId() == groupId && iVar.m() && iVar.isCheckable()) {
                iVar.s(iVar == menuItem);
            }
        }
        c0();
    }

    protected g U(int i10) {
        W(0, null, i10, null, null);
        return this;
    }

    protected g V(Drawable drawable) {
        W(0, null, 0, drawable, null);
        return this;
    }

    protected g X(int i10) {
        W(i10, null, 0, null, null);
        return this;
    }

    protected g Y(CharSequence charSequence) {
        W(0, charSequence, 0, null, null);
        return this;
    }

    protected g Z(View view) {
        W(0, null, 0, null, view);
        return this;
    }

    protected MenuItem a(int i10, int i11, int i12, CharSequence charSequence) {
        int iB = B(i12);
        i iVarG = g(i10, i11, i12, iB, charSequence, this.f681l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.f682m;
        if (contextMenuInfo != null) {
            iVarG.v(contextMenuInfo);
        }
        ArrayList<i> arrayList = this.f675f;
        arrayList.add(n(arrayList, iB), iVarG);
        K(true);
        return iVarG;
    }

    public void a0(boolean z10) {
        this.f695z = z10;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i10, int i11, int i12, ComponentName componentName, Intent[] intentArr, Intent intent, int i13, MenuItem[] menuItemArr) {
        int i14;
        PackageManager packageManager = this.f670a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i13 & 1) == 0) {
            removeGroup(i10);
        }
        for (int i15 = 0; i15 < size; i15++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i15);
            int i16 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i16 < 0 ? intent : intentArr[i16]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = add(i10, i11, i12, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i14 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i14] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void b(m mVar) {
        c(mVar, this.f670a);
    }

    public void c(m mVar, Context context) {
        this.f692w.add(new WeakReference<>(mVar));
        mVar.i(context, this);
        this.f680k = true;
    }

    public void c0() {
        this.f686q = false;
        if (this.f687r) {
            this.f687r = false;
            K(this.f688s);
        }
    }

    @Override // android.view.Menu
    public void clear() {
        i iVar = this.f693x;
        if (iVar != null) {
            f(iVar);
        }
        this.f675f.clear();
        K(true);
    }

    public void clearHeader() {
        this.f684o = null;
        this.f683n = null;
        this.f685p = null;
        K(false);
    }

    @Override // android.view.Menu
    public void close() {
        e(true);
    }

    public void d() {
        a aVar = this.f674e;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    public void d0() {
        if (this.f686q) {
            return;
        }
        this.f686q = true;
        this.f687r = false;
        this.f688s = false;
    }

    public final void e(boolean z10) {
        if (this.f690u) {
            return;
        }
        this.f690u = true;
        for (WeakReference<m> weakReference : this.f692w) {
            m mVar = weakReference.get();
            if (mVar == null) {
                this.f692w.remove(weakReference);
            } else {
                mVar.b(this, z10);
            }
        }
        this.f690u = false;
    }

    public boolean f(i iVar) {
        boolean zE = false;
        if (!this.f692w.isEmpty() && this.f693x == iVar) {
            d0();
            for (WeakReference<m> weakReference : this.f692w) {
                m mVar = weakReference.get();
                if (mVar != null) {
                    zE = mVar.e(this, iVar);
                    if (zE) {
                        break;
                    }
                } else {
                    this.f692w.remove(weakReference);
                }
            }
            c0();
            if (zE) {
                this.f693x = null;
            }
        }
        return zE;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i10) {
        MenuItem menuItemFindItem;
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = this.f675f.get(i11);
            if (iVar.getItemId() == i10) {
                return iVar;
            }
            if (iVar.hasSubMenu() && (menuItemFindItem = iVar.getSubMenu().findItem(i10)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i10) {
        return this.f675f.get(i10);
    }

    boolean h(g gVar, MenuItem menuItem) {
        a aVar = this.f674e;
        return aVar != null && aVar.a(gVar, menuItem);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f695z) {
            return true;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f675f.get(i10).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i10, KeyEvent keyEvent) {
        return p(i10, keyEvent) != null;
    }

    public boolean k(i iVar) {
        boolean zF = false;
        if (this.f692w.isEmpty()) {
            return false;
        }
        d0();
        for (WeakReference<m> weakReference : this.f692w) {
            m mVar = weakReference.get();
            if (mVar != null) {
                zF = mVar.f(this, iVar);
                if (zF) {
                    break;
                }
            } else {
                this.f692w.remove(weakReference);
            }
        }
        c0();
        if (zF) {
            this.f693x = iVar;
        }
        return zF;
    }

    public int l(int i10) {
        return m(i10, 0);
    }

    public int m(int i10, int i11) {
        int size = size();
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < size) {
            if (this.f675f.get(i11).getGroupId() == i10) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public int o(int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.f675f.get(i11).getItemId() == i10) {
                return i11;
            }
        }
        return -1;
    }

    i p(int i10, KeyEvent keyEvent) {
        ArrayList<i> arrayList = this.f691v;
        arrayList.clear();
        q(arrayList, i10, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean zG = G();
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = arrayList.get(i11);
            char alphabeticShortcut = zG ? iVar.getAlphabeticShortcut() : iVar.getNumericShortcut();
            char[] cArr = keyData.meta;
            if ((alphabeticShortcut == cArr[0] && (metaState & 2) == 0) || ((alphabeticShortcut == cArr[2] && (metaState & 2) != 0) || (zG && alphabeticShortcut == '\b' && i10 == 67))) {
                return iVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i10, int i11) {
        return L(findItem(i10), i11);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i10, KeyEvent keyEvent, int i11) {
        i iVarP = p(i10, keyEvent);
        boolean zL = iVarP != null ? L(iVarP, i11) : false;
        if ((i11 & 2) != 0) {
            e(true);
        }
        return zL;
    }

    void q(List<i> list, int i10, KeyEvent keyEvent) {
        boolean zG = G();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i10 == 67) {
            int size = this.f675f.size();
            for (int i11 = 0; i11 < size; i11++) {
                i iVar = this.f675f.get(i11);
                if (iVar.hasSubMenu()) {
                    ((g) iVar.getSubMenu()).q(list, i10, keyEvent);
                }
                char alphabeticShortcut = zG ? iVar.getAlphabeticShortcut() : iVar.getNumericShortcut();
                if (((modifiers & 69647) == ((zG ? iVar.getAlphabeticModifiers() : iVar.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (zG && alphabeticShortcut == '\b' && i10 == 67)) && iVar.isEnabled()) {
                        list.add(iVar);
                    }
                }
            }
        }
    }

    public void r() {
        ArrayList<i> arrayListE = E();
        if (this.f680k) {
            boolean zD = false;
            for (WeakReference<m> weakReference : this.f692w) {
                m mVar = weakReference.get();
                if (mVar == null) {
                    this.f692w.remove(weakReference);
                } else {
                    zD |= mVar.d();
                }
            }
            if (zD) {
                this.f678i.clear();
                this.f679j.clear();
                int size = arrayListE.size();
                for (int i10 = 0; i10 < size; i10++) {
                    i iVar = arrayListE.get(i10);
                    if (iVar.l()) {
                        this.f678i.add(iVar);
                    } else {
                        this.f679j.add(iVar);
                    }
                }
            } else {
                this.f678i.clear();
                this.f679j.clear();
                this.f679j.addAll(E());
            }
            this.f680k = false;
        }
    }

    @Override // android.view.Menu
    public void removeGroup(int i10) {
        int iL = l(i10);
        if (iL >= 0) {
            int size = this.f675f.size() - iL;
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                if (i11 >= size || this.f675f.get(iL).getGroupId() != i10) {
                    break;
                }
                N(iL, false);
                i11 = i12;
            }
            K(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i10) {
        N(o(i10), true);
    }

    public ArrayList<i> s() {
        r();
        return this.f678i;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i10, boolean z10, boolean z11) {
        int size = this.f675f.size();
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = this.f675f.get(i11);
            if (iVar.getGroupId() == i10) {
                iVar.t(z11);
                iVar.setCheckable(z10);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z10) {
        this.f694y = z10;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i10, boolean z10) {
        int size = this.f675f.size();
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = this.f675f.get(i11);
            if (iVar.getGroupId() == i10) {
                iVar.setEnabled(z10);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i10, boolean z10) {
        int size = this.f675f.size();
        boolean z11 = false;
        for (int i11 = 0; i11 < size; i11++) {
            i iVar = this.f675f.get(i11);
            if (iVar.getGroupId() == i10 && iVar.y(z10)) {
                z11 = true;
            }
        }
        if (z11) {
            K(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z10) {
        this.f672c = z10;
        K(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f675f.size();
    }

    protected String t() {
        return "android:menu:actionviewstates";
    }

    public Context u() {
        return this.f670a;
    }

    public i v() {
        return this.f693x;
    }

    public Drawable w() {
        return this.f684o;
    }

    public CharSequence x() {
        return this.f683n;
    }

    public View y() {
        return this.f685p;
    }

    public ArrayList<i> z() {
        r();
        return this.f679j;
    }

    @Override // android.view.Menu
    public MenuItem add(int i10) {
        return a(0, 0, 0, this.f671b.getString(i10));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i10) {
        return addSubMenu(0, 0, 0, this.f671b.getString(i10));
    }

    @Override // android.view.Menu
    public MenuItem add(int i10, int i11, int i12, CharSequence charSequence) {
        return a(i10, i11, i12, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        i iVar = (i) a(i10, i11, i12, charSequence);
        r rVar = new r(this.f670a, this, iVar);
        iVar.x(rVar);
        return rVar;
    }

    @Override // android.view.Menu
    public MenuItem add(int i10, int i11, int i12, int i13) {
        return a(i10, i11, i12, this.f671b.getString(i13));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i10, int i11, int i12, int i13) {
        return addSubMenu(i10, i11, i12, this.f671b.getString(i13));
    }
}
