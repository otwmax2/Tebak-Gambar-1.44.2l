package net.lingala.zip4j.model;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class LocalFileHeader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f32693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f32694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f32695c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f32696d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f32697e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f32699g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f32700h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f32702j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f32703k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f32704l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f32705m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f32706n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private char[] f32708p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ArrayList f32709q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Zip64ExtendedInfo f32710r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private AESExtraDataRecord f32711s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f32712t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f32714v;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f32707o = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f32713u = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f32698f = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f32701i = 0;

    public void A(ArrayList arrayList) {
        this.f32709q = arrayList;
    }

    public void B(int i10) {
        this.f32703k = i10;
    }

    public void C(String str) {
        this.f32704l = str;
    }

    public void D(int i10) {
        this.f32702j = i10;
    }

    public void E(boolean z10) {
        this.f32714v = z10;
    }

    public void F(byte[] bArr) {
        this.f32695c = bArr;
    }

    public void G(int i10) {
        this.f32697e = i10;
    }

    public void H(long j10) {
        this.f32705m = j10;
    }

    public void I(char[] cArr) {
        this.f32708p = cArr;
    }

    public void J(int i10) {
        this.f32693a = i10;
    }

    public void K(long j10) {
        this.f32701i = j10;
    }

    public void L(int i10) {
        this.f32694b = i10;
    }

    public void M(boolean z10) {
        this.f32713u = z10;
    }

    public void N(Zip64ExtendedInfo zip64ExtendedInfo) {
        this.f32710r = zip64ExtendedInfo;
    }

    public AESExtraDataRecord a() {
        return this.f32711s;
    }

    public long b() {
        return this.f32700h;
    }

    public int c() {
        return this.f32696d;
    }

    public long d() {
        return this.f32698f;
    }

    public int e() {
        return this.f32707o;
    }

    public ArrayList f() {
        return this.f32709q;
    }

    public int g() {
        return this.f32703k;
    }

    public String h() {
        return this.f32704l;
    }

    public int i() {
        return this.f32702j;
    }

    public byte[] j() {
        return this.f32695c;
    }

    public int k() {
        return this.f32697e;
    }

    public long l() {
        return this.f32705m;
    }

    public char[] m() {
        return this.f32708p;
    }

    public int n() {
        return this.f32693a;
    }

    public long o() {
        return this.f32701i;
    }

    public int p() {
        return this.f32694b;
    }

    public boolean q() {
        return this.f32706n;
    }

    public boolean r() {
        return this.f32714v;
    }

    public void s(AESExtraDataRecord aESExtraDataRecord) {
        this.f32711s = aESExtraDataRecord;
    }

    public void t(long j10) {
        this.f32700h = j10;
    }

    public void u(int i10) {
        this.f32696d = i10;
    }

    public void v(long j10) {
        this.f32698f = j10;
    }

    public void w(byte[] bArr) {
        this.f32699g = bArr;
    }

    public void x(boolean z10) {
        this.f32712t = z10;
    }

    public void y(boolean z10) {
        this.f32706n = z10;
    }

    public void z(int i10) {
        this.f32707o = i10;
    }
}
