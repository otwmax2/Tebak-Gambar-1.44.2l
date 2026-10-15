package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

/* JADX INFO: compiled from: BaseMenuPresenter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b implements m {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected Context f619o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected Context f620p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected g f621q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected LayoutInflater f622r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected LayoutInflater f623s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private m.a f624t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f625u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f626v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected n f627w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f628x;

    public b(Context context, int i10, int i11) {
        this.f619o = context;
        this.f622r = LayoutInflater.from(context);
        this.f625u = i10;
        this.f626v = i11;
    }

    protected void a(View view, int i10) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f627w).addView(view, i10);
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z10) {
        m.a aVar = this.f624t;
        if (aVar != null) {
            aVar.b(gVar, z10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z10) {
        ViewGroup viewGroup = (ViewGroup) this.f627w;
        if (viewGroup == null) {
            return;
        }
        g gVar = this.f621q;
        int i10 = 0;
        if (gVar != null) {
            gVar.r();
            ArrayList<i> arrayListE = this.f621q.E();
            int size = arrayListE.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                i iVar = arrayListE.get(i12);
                if (q(i11, iVar)) {
                    View childAt = viewGroup.getChildAt(i11);
                    i itemData = childAt instanceof n.a ? ((n.a) childAt).getItemData() : null;
                    View viewN = n(iVar, childAt, viewGroup);
                    if (iVar != itemData) {
                        viewN.setPressed(false);
                        viewN.jumpDrawablesToCurrentState();
                    }
                    if (viewN != childAt) {
                        a(viewN, i11);
                    }
                    i11++;
                }
            }
            i10 = i11;
        }
        while (i10 < viewGroup.getChildCount()) {
            if (!l(viewGroup, i10)) {
                i10++;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean e(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean f(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public void g(m.a aVar) {
        this.f624t = aVar;
    }

    public abstract void h(i iVar, n.a aVar);

    @Override // androidx.appcompat.view.menu.m
    public void i(Context context, g gVar) {
        this.f620p = context;
        this.f623s = LayoutInflater.from(context);
        this.f621q = gVar;
    }

    public n.a j(ViewGroup viewGroup) {
        return (n.a) this.f622r.inflate(this.f626v, viewGroup, false);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.appcompat.view.menu.m
    public boolean k(r rVar) {
        m.a aVar = this.f624t;
        g gVar = rVar;
        if (aVar == null) {
            return false;
        }
        if (rVar == null) {
            gVar = this.f621q;
        }
        return aVar.c(gVar);
    }

    protected boolean l(ViewGroup viewGroup, int i10) {
        viewGroup.removeViewAt(i10);
        return true;
    }

    public m.a m() {
        return this.f624t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View n(i iVar, View view, ViewGroup viewGroup) {
        n.a aVarJ = view instanceof n.a ? (n.a) view : j(viewGroup);
        h(iVar, aVarJ);
        return (View) aVarJ;
    }

    public n o(ViewGroup viewGroup) {
        if (this.f627w == null) {
            n nVar = (n) this.f622r.inflate(this.f625u, viewGroup, false);
            this.f627w = nVar;
            nVar.b(this.f621q);
            c(true);
        }
        return this.f627w;
    }

    public void p(int i10) {
        this.f628x = i10;
    }

    public abstract boolean q(int i10, i iVar);
}
