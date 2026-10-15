package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfgu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f18186a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f18187b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f18188c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet f18189d = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashSet f18190e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashSet f18191f = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap f18192g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map f18193h = new WeakHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f18194i;

    public final View a(String str) {
        return (View) this.f18188c.get(str);
    }

    public final zzfgt b(View view) {
        zzfgt zzfgtVar = (zzfgt) this.f18187b.get(view);
        if (zzfgtVar != null) {
            this.f18187b.remove(view);
        }
        return zzfgtVar;
    }

    public final String c(String str) {
        return (String) this.f18192g.get(str);
    }

    public final String d(View view) {
        if (this.f18186a.size() == 0) {
            return null;
        }
        String str = (String) this.f18186a.get(view);
        if (str != null) {
            this.f18186a.remove(view);
        }
        return str;
    }

    public final HashSet e() {
        return this.f18191f;
    }

    public final HashSet f() {
        return this.f18190e;
    }

    public final void g() {
        this.f18186a.clear();
        this.f18187b.clear();
        this.f18188c.clear();
        this.f18189d.clear();
        this.f18190e.clear();
        this.f18191f.clear();
        this.f18192g.clear();
        this.f18194i = false;
    }

    public final void h() {
        this.f18194i = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void i() {
        Boolean bool;
        zzffz zzffzVarA = zzffz.a();
        if (zzffzVarA != null) {
            for (zzffo zzffoVar : zzffzVarA.b()) {
                View viewF = zzffoVar.f();
                if (zzffoVar.j()) {
                    String strH = zzffoVar.h();
                    if (viewF != null) {
                        String str = null;
                        if (viewF.isAttachedToWindow()) {
                            if (viewF.hasWindowFocus()) {
                                this.f18193h.remove(viewF);
                                bool = Boolean.FALSE;
                            } else if (this.f18193h.containsKey(viewF)) {
                                bool = (Boolean) this.f18193h.get(viewF);
                            } else {
                                Map map = this.f18193h;
                                Boolean bool2 = Boolean.FALSE;
                                map.put(viewF, bool2);
                                bool = bool2;
                            }
                            if (bool.booleanValue()) {
                                str = "noWindowFocus";
                            } else {
                                HashSet hashSet = new HashSet();
                                View view = viewF;
                                while (true) {
                                    if (view == null) {
                                        this.f18189d.addAll(hashSet);
                                        break;
                                    }
                                    String strB = zzfgs.b(view);
                                    if (strB != null) {
                                        str = strB;
                                        break;
                                    } else {
                                        hashSet.add(view);
                                        Object parent = view.getParent();
                                        view = parent instanceof View ? (View) parent : null;
                                    }
                                }
                            }
                        } else {
                            str = "notAttached";
                        }
                        if (str == null) {
                            this.f18190e.add(strH);
                            this.f18186a.put(viewF, strH);
                            for (zzfgb zzfgbVar : zzffoVar.i()) {
                                View view2 = (View) zzfgbVar.b().get();
                                if (view2 != null) {
                                    zzfgt zzfgtVar = (zzfgt) this.f18187b.get(view2);
                                    if (zzfgtVar != null) {
                                        zzfgtVar.c(zzffoVar.h());
                                    } else {
                                        this.f18187b.put(view2, new zzfgt(zzfgbVar, zzffoVar.h()));
                                    }
                                }
                            }
                        } else if (str != "noWindowFocus") {
                            this.f18191f.add(strH);
                            this.f18188c.put(strH, viewF);
                            this.f18192g.put(strH, str);
                        }
                    } else {
                        this.f18191f.add(strH);
                        this.f18192g.put(strH, "noAdView");
                    }
                }
            }
        }
    }

    public final boolean j(View view) {
        if (!this.f18193h.containsKey(view)) {
            return true;
        }
        this.f18193h.put(view, Boolean.TRUE);
        return false;
    }

    public final int k(View view) {
        if (this.f18189d.contains(view)) {
            return 1;
        }
        return this.f18194i ? 2 : 3;
    }
}
