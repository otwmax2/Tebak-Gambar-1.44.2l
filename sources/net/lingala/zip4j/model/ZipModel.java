package net.lingala.zip4j.model;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ZipModel implements Cloneable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List f32740o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CentralDirectory f32741p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private EndCentralDirRecord f32742q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Zip64EndCentralDirLocator f32743r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Zip64EndCentralDirRecord f32744s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f32745t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f32746u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f32747v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f32748w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f32749x;

    public CentralDirectory a() {
        return this.f32741p;
    }

    public EndCentralDirRecord b() {
        return this.f32742q;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public String d() {
        return this.f32749x;
    }

    public List f() {
        return this.f32740o;
    }

    public long g() {
        return this.f32746u;
    }

    public Zip64EndCentralDirLocator h() {
        return this.f32743r;
    }

    public Zip64EndCentralDirRecord i() {
        return this.f32744s;
    }

    public String j() {
        return this.f32747v;
    }

    public boolean k() {
        return this.f32745t;
    }

    public boolean l() {
        return this.f32748w;
    }

    public void m(CentralDirectory centralDirectory) {
        this.f32741p = centralDirectory;
    }

    public void n(EndCentralDirRecord endCentralDirRecord) {
        this.f32742q = endCentralDirRecord;
    }

    public void o(String str) {
        this.f32749x = str;
    }

    public void p(List list) {
        this.f32740o = list;
    }

    public void q(boolean z10) {
        this.f32745t = z10;
    }

    public void r(long j10) {
        this.f32746u = j10;
    }

    public void s(Zip64EndCentralDirLocator zip64EndCentralDirLocator) {
        this.f32743r = zip64EndCentralDirLocator;
    }

    public void t(Zip64EndCentralDirRecord zip64EndCentralDirRecord) {
        this.f32744s = zip64EndCentralDirRecord;
    }

    public void u(boolean z10) {
        this.f32748w = z10;
    }

    public void v(String str) {
        this.f32747v = str;
    }
}
