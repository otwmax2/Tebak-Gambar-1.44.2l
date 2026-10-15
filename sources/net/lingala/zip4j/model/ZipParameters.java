package net.lingala.zip4j.model;

import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class ZipParameters implements Cloneable {
    private String A;
    private boolean B;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f32751p;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private char[] f32755t;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f32758w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f32760y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f32761z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f32750o = 8;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f32752q = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f32754s = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f32753r = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f32756u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f32757v = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private TimeZone f32759x = TimeZone.getDefault();

    public int a() {
        return this.f32756u;
    }

    public int b() {
        return this.f32751p;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public int d() {
        return this.f32750o;
    }

    public String f() {
        return this.f32761z;
    }

    public int g() {
        return this.f32753r;
    }

    public String h() {
        return this.A;
    }

    public char[] i() {
        return this.f32755t;
    }

    public String j() {
        return this.f32758w;
    }

    public int k() {
        return this.f32760y;
    }

    public TimeZone l() {
        return this.f32759x;
    }

    public boolean m() {
        return this.f32752q;
    }

    public boolean n() {
        return this.B;
    }

    public void o(int i10) {
        this.f32756u = i10;
    }

    public void p(int i10) {
        this.f32750o = i10;
    }

    public void q(boolean z10) {
        this.f32752q = z10;
    }

    public void r(int i10) {
        this.f32753r = i10;
    }

    public void s(int i10) {
        this.f32760y = i10;
    }
}
