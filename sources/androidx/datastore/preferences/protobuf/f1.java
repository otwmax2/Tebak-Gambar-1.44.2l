package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.k0;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: Reader.java */
/* JADX INFO: loaded from: classes.dex */
interface f1 {
    int A() throws IOException;

    void B(List<String> list) throws IOException;

    void C(List<String> list) throws IOException;

    h D() throws IOException;

    void E(List<Float> list) throws IOException;

    int F() throws IOException;

    @Deprecated
    <T> void G(List<T> list, g1<T> g1Var, p pVar) throws IOException;

    boolean H() throws IOException;

    int I() throws IOException;

    void J(List<h> list) throws IOException;

    void K(List<Double> list) throws IOException;

    <T> void L(List<T> list, g1<T> g1Var, p pVar) throws IOException;

    long M() throws IOException;

    String N() throws IOException;

    void O(List<Long> list) throws IOException;

    @Deprecated
    <T> T P(g1<T> g1Var, p pVar) throws IOException;

    <T> T a(g1<T> g1Var, p pVar) throws IOException;

    void b(List<Integer> list) throws IOException;

    long c() throws IOException;

    long d() throws IOException;

    <T> T e(Class<T> cls, p pVar) throws IOException;

    void f(List<Integer> list) throws IOException;

    void g(List<Long> list) throws IOException;

    void h(List<Integer> list) throws IOException;

    int i() throws IOException;

    boolean j() throws IOException;

    long k() throws IOException;

    void l(List<Long> list) throws IOException;

    @Deprecated
    <T> T m(Class<T> cls, p pVar) throws IOException;

    int n() throws IOException;

    void o(List<Long> list) throws IOException;

    void p(List<Long> list) throws IOException;

    void q(List<Integer> list) throws IOException;

    void r(List<Integer> list) throws IOException;

    double readDouble() throws IOException;

    float readFloat() throws IOException;

    <K, V> void s(Map<K, V> map, k0.a<K, V> aVar, p pVar) throws IOException;

    int t() throws IOException;

    int u();

    void v(List<Integer> list) throws IOException;

    int w() throws IOException;

    long x() throws IOException;

    void y(List<Boolean> list) throws IOException;

    String z() throws IOException;
}
