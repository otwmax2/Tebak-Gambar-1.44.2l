package net.lingala.zip4j.model;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class FileHeader {
    private boolean A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f32667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f32668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f32669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f32670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f32671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f32672f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private byte[] f32674h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f32675i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f32677k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f32678l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f32679m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f32680n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private byte[] f32681o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f32682p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f32683q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f32684r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f32685s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f32686t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private char[] f32688v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f32689w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Zip64ExtendedInfo f32690x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private AESExtraDataRecord f32691y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ArrayList f32692z;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f32687u = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f32673g = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f32676j = 0;

    public void A(int i10) {
        this.f32671e = i10;
    }

    public void B(long j10) {
        this.f32673g = j10;
    }

    public void C(byte[] bArr) {
        this.f32674h = bArr;
    }

    public void D(boolean z10) {
        this.f32689w = z10;
    }

    public void E(boolean z10) {
        this.f32685s = z10;
    }

    public void F(int i10) {
        this.f32679m = i10;
    }

    public void G(boolean z10) {
        this.f32686t = z10;
    }

    public void H(int i10) {
        this.f32687u = i10;
    }

    public void I(byte[] bArr) {
        this.f32681o = bArr;
    }

    public void J(ArrayList arrayList) {
        this.f32692z = arrayList;
    }

    public void K(int i10) {
        this.f32678l = i10;
    }

    public void L(String str) {
        this.f32684r = str;
    }

    public void M(String str) {
        this.f32683q = str;
    }

    public void N(int i10) {
        this.f32677k = i10;
    }

    public void O(boolean z10) {
        this.A = z10;
    }

    public void P(byte[] bArr) {
        this.f32670d = bArr;
    }

    public void Q(byte[] bArr) {
        this.f32680n = bArr;
    }

    public void R(int i10) {
        this.f32672f = i10;
    }

    public void S(long j10) {
        this.f32682p = j10;
    }

    public void T(char[] cArr) {
        this.f32688v = cArr;
    }

    public void U(int i10) {
        this.f32667a = i10;
    }

    public void V(long j10) {
        this.f32676j = j10;
    }

    public void W(int i10) {
        this.f32668b = i10;
    }

    public void X(int i10) {
        this.f32669c = i10;
    }

    public void Y(Zip64ExtendedInfo zip64ExtendedInfo) {
        this.f32690x = zip64ExtendedInfo;
    }

    public AESExtraDataRecord a() {
        return this.f32691y;
    }

    public long b() {
        return this.f32675i;
    }

    public int c() {
        return this.f32671e;
    }

    public long d() {
        return this.f32673g & 4294967295L;
    }

    public byte[] e() {
        return this.f32674h;
    }

    public int f() {
        return this.f32679m;
    }

    public int g() {
        return this.f32687u;
    }

    public byte[] h() {
        return this.f32681o;
    }

    public ArrayList i() {
        return this.f32692z;
    }

    public int j() {
        return this.f32678l;
    }

    public String k() {
        return this.f32683q;
    }

    public int l() {
        return this.f32677k;
    }

    public byte[] m() {
        return this.f32670d;
    }

    public int n() {
        return this.f32672f;
    }

    public long o() {
        return this.f32682p;
    }

    public char[] p() {
        return this.f32688v;
    }

    public int q() {
        return this.f32667a;
    }

    public long r() {
        return this.f32676j;
    }

    public int s() {
        return this.f32668b;
    }

    public int t() {
        return this.f32669c;
    }

    public Zip64ExtendedInfo u() {
        return this.f32690x;
    }

    public boolean v() {
        return this.f32685s;
    }

    public boolean w() {
        return this.f32686t;
    }

    public boolean x() {
        return this.A;
    }

    public void y(AESExtraDataRecord aESExtraDataRecord) {
        this.f32691y = aESExtraDataRecord;
    }

    public void z(long j10) {
        this.f32675i = j10;
    }
}
