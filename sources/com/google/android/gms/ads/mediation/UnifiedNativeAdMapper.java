package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class UnifiedNativeAdMapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f6287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6288c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private NativeAd.Image f6289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6291f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Double f6292g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f6293h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f6294i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private VideoController f6295j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f6296k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f6297l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f6298m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Object f6299n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Bundle f6300o = new Bundle();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f6301p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f6302q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f6303r;

    public final void A(boolean z10) {
        this.f6301p = z10;
    }

    public final void B(String str) {
        this.f6294i = str;
    }

    public final void C(Double d10) {
        this.f6292g = d10;
    }

    public final void D(String str) {
        this.f6293h = str;
    }

    public void E(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void F(View view) {
    }

    public final View G() {
        return this.f6298m;
    }

    public final VideoController H() {
        return this.f6295j;
    }

    public final Object I() {
        return this.f6299n;
    }

    public final void J(Object obj) {
        this.f6299n = obj;
    }

    public final void K(VideoController videoController) {
        this.f6295j = videoController;
    }

    public View a() {
        return this.f6297l;
    }

    public final String b() {
        return this.f6291f;
    }

    public final String c() {
        return this.f6288c;
    }

    public final String d() {
        return this.f6290e;
    }

    public float e() {
        return 0.0f;
    }

    public float f() {
        return 0.0f;
    }

    public final Bundle g() {
        return this.f6300o;
    }

    public final String h() {
        return this.f6286a;
    }

    public final NativeAd.Image i() {
        return this.f6289d;
    }

    public final List<NativeAd.Image> j() {
        return this.f6287b;
    }

    public float k() {
        return this.f6303r;
    }

    public final boolean l() {
        return this.f6302q;
    }

    public final boolean m() {
        return this.f6301p;
    }

    public final String n() {
        return this.f6294i;
    }

    public final Double o() {
        return this.f6292g;
    }

    public final String p() {
        return this.f6293h;
    }

    public void q(View view) {
    }

    public boolean r() {
        return this.f6296k;
    }

    public void s() {
    }

    public final void t(String str) {
        this.f6291f = str;
    }

    public final void u(String str) {
        this.f6288c = str;
    }

    public final void v(String str) {
        this.f6290e = str;
    }

    public final void w(String str) {
        this.f6286a = str;
    }

    public final void x(NativeAd.Image image) {
        this.f6289d = image;
    }

    public final void y(List<NativeAd.Image> list) {
        this.f6287b = list;
    }

    public final void z(boolean z10) {
        this.f6302q = z10;
    }
}
