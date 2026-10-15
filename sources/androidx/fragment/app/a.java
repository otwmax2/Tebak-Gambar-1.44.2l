package androidx.fragment.app;

import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.n;
import androidx.fragment.app.w;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: compiled from: BackStackRecord.java */
/* JADX INFO: loaded from: classes.dex */
final class a extends w implements n.o {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final n f3133t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f3134u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f3135v;

    a(n nVar) {
        super(nVar.q0(), nVar.t0() != null ? nVar.t0().f().getClassLoader() : null);
        this.f3135v = -1;
        this.f3133t = nVar;
    }

    private static boolean z(w.a aVar) {
        Fragment fragment = aVar.f3379b;
        return (fragment == null || !fragment.mAdded || fragment.mView == null || fragment.mDetached || fragment.mHidden || !fragment.isPostponed()) ? false : true;
    }

    boolean A() {
        for (int i10 = 0; i10 < this.f3361c.size(); i10++) {
            if (z(this.f3361c.get(i10))) {
                return true;
            }
        }
        return false;
    }

    public void B() {
        if (this.f3377s != null) {
            for (int i10 = 0; i10 < this.f3377s.size(); i10++) {
                this.f3377s.get(i10).run();
            }
            this.f3377s = null;
        }
    }

    void C(Fragment.l lVar) {
        for (int i10 = 0; i10 < this.f3361c.size(); i10++) {
            w.a aVar = this.f3361c.get(i10);
            if (z(aVar)) {
                aVar.f3379b.setOnStartEnterTransitionListener(lVar);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    androidx.fragment.app.Fragment D(java.util.ArrayList<androidx.fragment.app.Fragment> r6, androidx.fragment.app.Fragment r7) {
        /*
            r5 = this;
            java.util.ArrayList<androidx.fragment.app.w$a> r0 = r5.f3361c
            int r0 = r0.size()
            r1 = 1
            int r0 = r0 - r1
        L8:
            if (r0 < 0) goto L35
            java.util.ArrayList<androidx.fragment.app.w$a> r2 = r5.f3361c
            java.lang.Object r2 = r2.get(r0)
            androidx.fragment.app.w$a r2 = (androidx.fragment.app.w.a) r2
            int r3 = r2.f3378a
            if (r3 == r1) goto L2d
            r4 = 3
            if (r3 == r4) goto L27
            switch(r3) {
                case 6: goto L27;
                case 7: goto L2d;
                case 8: goto L25;
                case 9: goto L22;
                case 10: goto L1d;
                default: goto L1c;
            }
        L1c:
            goto L32
        L1d:
            androidx.lifecycle.j$c r3 = r2.f3384g
            r2.f3385h = r3
            goto L32
        L22:
            androidx.fragment.app.Fragment r7 = r2.f3379b
            goto L32
        L25:
            r7 = 0
            goto L32
        L27:
            androidx.fragment.app.Fragment r2 = r2.f3379b
            r6.add(r2)
            goto L32
        L2d:
            androidx.fragment.app.Fragment r2 = r2.f3379b
            r6.remove(r2)
        L32:
            int r0 = r0 + (-1)
            goto L8
        L35:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.a.D(java.util.ArrayList, androidx.fragment.app.Fragment):androidx.fragment.app.Fragment");
    }

    @Override // androidx.fragment.app.n.o
    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (n.F0(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f3367i) {
            return true;
        }
        this.f3133t.e(this);
        return true;
    }

    @Override // androidx.fragment.app.w
    public int f() {
        return q(false);
    }

    @Override // androidx.fragment.app.w
    public int g() {
        return q(true);
    }

    @Override // androidx.fragment.app.w
    public void h() {
        j();
        this.f3133t.c0(this, false);
    }

    @Override // androidx.fragment.app.w
    public void i() {
        j();
        this.f3133t.c0(this, true);
    }

    @Override // androidx.fragment.app.w
    void k(int i10, Fragment fragment, String str, int i11) {
        super.k(i10, fragment, str, i11);
        fragment.mFragmentManager = this.f3133t;
    }

    @Override // androidx.fragment.app.w
    public w l(Fragment fragment) {
        n nVar = fragment.mFragmentManager;
        if (nVar == null || nVar == this.f3133t) {
            return super.l(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    void p(int i10) {
        if (this.f3367i) {
            if (n.F0(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i10);
            }
            int size = this.f3361c.size();
            for (int i11 = 0; i11 < size; i11++) {
                w.a aVar = this.f3361c.get(i11);
                Fragment fragment = aVar.f3379b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i10;
                    if (n.F0(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.f3379b + " to " + aVar.f3379b.mBackStackNesting);
                    }
                }
            }
        }
    }

    int q(boolean z10) {
        if (this.f3134u) {
            throw new IllegalStateException("commit already called");
        }
        if (n.F0(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new b0("FragmentManager"));
            r("  ", printWriter);
            printWriter.close();
        }
        this.f3134u = true;
        if (this.f3367i) {
            this.f3135v = this.f3133t.j();
        } else {
            this.f3135v = -1;
        }
        this.f3133t.Z(this, z10);
        return this.f3135v;
    }

    public void r(String str, PrintWriter printWriter) {
        s(str, printWriter, true);
    }

    public void s(String str, PrintWriter printWriter, boolean z10) {
        String str2;
        if (z10) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f3369k);
            printWriter.print(" mIndex=");
            printWriter.print(this.f3135v);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f3134u);
            if (this.f3366h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f3366h));
            }
            if (this.f3362d != 0 || this.f3363e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f3362d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f3363e));
            }
            if (this.f3364f != 0 || this.f3365g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f3364f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f3365g));
            }
            if (this.f3370l != 0 || this.f3371m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f3370l));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f3371m);
            }
            if (this.f3372n != 0 || this.f3373o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f3372n));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f3373o);
            }
        }
        if (this.f3361c.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f3361c.size();
        for (int i10 = 0; i10 < size; i10++) {
            w.a aVar = this.f3361c.get(i10);
            switch (aVar.f3378a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + aVar.f3378a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i10);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.f3379b);
            if (z10) {
                if (aVar.f3380c != 0 || aVar.f3381d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f3380c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f3381d));
                }
                if (aVar.f3382e != 0 || aVar.f3383f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f3382e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f3383f));
                }
            }
        }
    }

    void t() {
        int size = this.f3361c.size();
        for (int i10 = 0; i10 < size; i10++) {
            w.a aVar = this.f3361c.get(i10);
            Fragment fragment = aVar.f3379b;
            if (fragment != null) {
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.f3366h);
                fragment.setSharedElementNames(this.f3374p, this.f3375q);
            }
            switch (aVar.f3378a) {
                case 1:
                    fragment.setAnimations(aVar.f3380c, aVar.f3381d, aVar.f3382e, aVar.f3383f);
                    this.f3133t.k1(fragment, false);
                    this.f3133t.g(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f3378a);
                case 3:
                    fragment.setAnimations(aVar.f3380c, aVar.f3381d, aVar.f3382e, aVar.f3383f);
                    this.f3133t.c1(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.f3380c, aVar.f3381d, aVar.f3382e, aVar.f3383f);
                    this.f3133t.C0(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.f3380c, aVar.f3381d, aVar.f3382e, aVar.f3383f);
                    this.f3133t.k1(fragment, false);
                    this.f3133t.o1(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.f3380c, aVar.f3381d, aVar.f3382e, aVar.f3383f);
                    this.f3133t.y(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.f3380c, aVar.f3381d, aVar.f3382e, aVar.f3383f);
                    this.f3133t.k1(fragment, false);
                    this.f3133t.l(fragment);
                    break;
                case 8:
                    this.f3133t.m1(fragment);
                    break;
                case 9:
                    this.f3133t.m1(null);
                    break;
                case 10:
                    this.f3133t.l1(fragment, aVar.f3385h);
                    break;
            }
            if (!this.f3376r && aVar.f3378a != 1 && fragment != null && !n.P) {
                this.f3133t.P0(fragment);
            }
        }
        if (this.f3376r || n.P) {
            return;
        }
        n nVar = this.f3133t;
        nVar.Q0(nVar.f3287q, true);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f3135v >= 0) {
            sb.append(" #");
            sb.append(this.f3135v);
        }
        if (this.f3369k != null) {
            sb.append(" ");
            sb.append(this.f3369k);
        }
        sb.append("}");
        return sb.toString();
    }

    void u(boolean z10) {
        for (int size = this.f3361c.size() - 1; size >= 0; size--) {
            w.a aVar = this.f3361c.get(size);
            Fragment fragment = aVar.f3379b;
            if (fragment != null) {
                fragment.setPopDirection(true);
                fragment.setNextTransition(n.h1(this.f3366h));
                fragment.setSharedElementNames(this.f3375q, this.f3374p);
            }
            switch (aVar.f3378a) {
                case 1:
                    fragment.setAnimations(aVar.f3380c, aVar.f3381d, aVar.f3382e, aVar.f3383f);
                    this.f3133t.k1(fragment, true);
                    this.f3133t.c1(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f3378a);
                case 3:
                    fragment.setAnimations(aVar.f3380c, aVar.f3381d, aVar.f3382e, aVar.f3383f);
                    this.f3133t.g(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.f3380c, aVar.f3381d, aVar.f3382e, aVar.f3383f);
                    this.f3133t.o1(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.f3380c, aVar.f3381d, aVar.f3382e, aVar.f3383f);
                    this.f3133t.k1(fragment, true);
                    this.f3133t.C0(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.f3380c, aVar.f3381d, aVar.f3382e, aVar.f3383f);
                    this.f3133t.l(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.f3380c, aVar.f3381d, aVar.f3382e, aVar.f3383f);
                    this.f3133t.k1(fragment, true);
                    this.f3133t.y(fragment);
                    break;
                case 8:
                    this.f3133t.m1(null);
                    break;
                case 9:
                    this.f3133t.m1(fragment);
                    break;
                case 10:
                    this.f3133t.l1(fragment, aVar.f3384g);
                    break;
            }
            if (!this.f3376r && aVar.f3378a != 3 && fragment != null && !n.P) {
                this.f3133t.P0(fragment);
            }
        }
        if (this.f3376r || !z10 || n.P) {
            return;
        }
        n nVar = this.f3133t;
        nVar.Q0(nVar.f3287q, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    androidx.fragment.app.Fragment v(java.util.ArrayList<androidx.fragment.app.Fragment> r17, androidx.fragment.app.Fragment r18) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r3 = r18
            r4 = 0
        L7:
            java.util.ArrayList<androidx.fragment.app.w$a> r5 = r0.f3361c
            int r5 = r5.size()
            if (r4 >= r5) goto Lba
            java.util.ArrayList<androidx.fragment.app.w$a> r5 = r0.f3361c
            java.lang.Object r5 = r5.get(r4)
            androidx.fragment.app.w$a r5 = (androidx.fragment.app.w.a) r5
            int r6 = r5.f3378a
            r7 = 0
            r8 = 1
            if (r6 == r8) goto Lb2
            r9 = 2
            r10 = 3
            r11 = 9
            if (r6 == r9) goto L58
            if (r6 == r10) goto L41
            r9 = 6
            if (r6 == r9) goto L41
            r7 = 7
            if (r6 == r7) goto Lb2
            r7 = 8
            if (r6 == r7) goto L31
            goto Lb7
        L31:
            java.util.ArrayList<androidx.fragment.app.w$a> r6 = r0.f3361c
            androidx.fragment.app.w$a r7 = new androidx.fragment.app.w$a
            r7.<init>(r11, r3)
            r6.add(r4, r7)
            int r4 = r4 + 1
            androidx.fragment.app.Fragment r3 = r5.f3379b
            goto Lb7
        L41:
            androidx.fragment.app.Fragment r6 = r5.f3379b
            r1.remove(r6)
            androidx.fragment.app.Fragment r5 = r5.f3379b
            if (r5 != r3) goto Lb7
            java.util.ArrayList<androidx.fragment.app.w$a> r3 = r0.f3361c
            androidx.fragment.app.w$a r6 = new androidx.fragment.app.w$a
            r6.<init>(r11, r5)
            r3.add(r4, r6)
            int r4 = r4 + 1
            r3 = r7
            goto Lb7
        L58:
            androidx.fragment.app.Fragment r6 = r5.f3379b
            int r9 = r6.mContainerId
            int r12 = r17.size()
            int r12 = r12 - r8
            r13 = 0
        L62:
            if (r12 < 0) goto La2
            java.lang.Object r14 = r1.get(r12)
            androidx.fragment.app.Fragment r14 = (androidx.fragment.app.Fragment) r14
            int r15 = r14.mContainerId
            if (r15 != r9) goto L9f
            if (r14 != r6) goto L72
            r13 = 1
            goto L9f
        L72:
            if (r14 != r3) goto L81
            java.util.ArrayList<androidx.fragment.app.w$a> r3 = r0.f3361c
            androidx.fragment.app.w$a r15 = new androidx.fragment.app.w$a
            r15.<init>(r11, r14)
            r3.add(r4, r15)
            int r4 = r4 + 1
            r3 = r7
        L81:
            androidx.fragment.app.w$a r15 = new androidx.fragment.app.w$a
            r15.<init>(r10, r14)
            int r2 = r5.f3380c
            r15.f3380c = r2
            int r2 = r5.f3382e
            r15.f3382e = r2
            int r2 = r5.f3381d
            r15.f3381d = r2
            int r2 = r5.f3383f
            r15.f3383f = r2
            java.util.ArrayList<androidx.fragment.app.w$a> r2 = r0.f3361c
            r2.add(r4, r15)
            r1.remove(r14)
            int r4 = r4 + r8
        L9f:
            int r12 = r12 + (-1)
            goto L62
        La2:
            if (r13 == 0) goto Lac
            java.util.ArrayList<androidx.fragment.app.w$a> r2 = r0.f3361c
            r2.remove(r4)
            int r4 = r4 + (-1)
            goto Lb7
        Lac:
            r5.f3378a = r8
            r1.add(r6)
            goto Lb7
        Lb2:
            androidx.fragment.app.Fragment r2 = r5.f3379b
            r1.add(r2)
        Lb7:
            int r4 = r4 + r8
            goto L7
        Lba:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.a.v(java.util.ArrayList, androidx.fragment.app.Fragment):androidx.fragment.app.Fragment");
    }

    public String w() {
        return this.f3369k;
    }

    boolean x(int i10) {
        int size = this.f3361c.size();
        for (int i11 = 0; i11 < size; i11++) {
            Fragment fragment = this.f3361c.get(i11).f3379b;
            int i12 = fragment != null ? fragment.mContainerId : 0;
            if (i12 != 0 && i12 == i10) {
                return true;
            }
        }
        return false;
    }

    boolean y(ArrayList<a> arrayList, int i10, int i11) {
        if (i11 == i10) {
            return false;
        }
        int size = this.f3361c.size();
        int i12 = -1;
        for (int i13 = 0; i13 < size; i13++) {
            Fragment fragment = this.f3361c.get(i13).f3379b;
            int i14 = fragment != null ? fragment.mContainerId : 0;
            if (i14 != 0 && i14 != i12) {
                for (int i15 = i10; i15 < i11; i15++) {
                    a aVar = arrayList.get(i15);
                    int size2 = aVar.f3361c.size();
                    for (int i16 = 0; i16 < size2; i16++) {
                        Fragment fragment2 = aVar.f3361c.get(i16).f3379b;
                        if ((fragment2 != null ? fragment2.mContainerId : 0) == i14) {
                            return true;
                        }
                    }
                }
                i12 = i14;
            }
        }
        return false;
    }
}
