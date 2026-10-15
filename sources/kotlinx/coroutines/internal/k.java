package kotlinx.coroutines.internal;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;

/* JADX INFO: compiled from: FastServiceLoader.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f31753a = new k();

    private k() {
    }

    private final <S> S a(String str, ClassLoader classLoader, Class<S> cls) throws ClassNotFoundException {
        Class<?> cls2 = Class.forName(str, false, classLoader);
        if (cls.isAssignableFrom(cls2)) {
            return cls.cast(cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        }
        throw new IllegalArgumentException(("Expected service of class " + cls + ", but found " + cls2).toString());
    }

    private final <S> List<S> b(Class<S> cls, ClassLoader classLoader) {
        try {
            return d(cls, classLoader);
        } catch (Throwable unused) {
            return i9.t.O(ServiceLoader.load(cls, classLoader));
        }
    }

    private final List<String> e(URL url) throws IOException {
        BufferedReader bufferedReader;
        String string = url.toString();
        if (!ba.p.u(string, "jar", false, 2, null)) {
            bufferedReader = new BufferedReader(new InputStreamReader(url.openStream()));
            try {
                List<String> listF = f31753a.f(bufferedReader);
                q9.b.a(bufferedReader, null);
                return listF;
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        }
        String strN0 = ba.q.n0(ba.q.i0(string, "jar:file:", null, 2, null), '!', null, 2, null);
        String strI0 = ba.q.i0(string, "!/", null, 2, null);
        JarFile jarFile = new JarFile(strN0, false);
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(strI0)), "UTF-8"));
            try {
                List<String> listF2 = f31753a.f(bufferedReader);
                q9.b.a(bufferedReader, null);
                jarFile.close();
                return listF2;
            } finally {
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                try {
                    jarFile.close();
                    throw th3;
                } catch (Throwable th4) {
                    h9.b.a(th2, th4);
                    throw th2;
                }
            }
        }
    }

    private final List<String> f(BufferedReader bufferedReader) throws IOException {
        boolean z10;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return i9.t.O(linkedHashSet);
            }
            String string = ba.q.p0(ba.q.o0(line, "#", null, 2, null)).toString();
            int i10 = 0;
            while (true) {
                if (i10 >= string.length()) {
                    z10 = true;
                    break;
                }
                char cCharAt = string.charAt(i10);
                if (!(cCharAt == '.' || Character.isJavaIdentifierPart(cCharAt))) {
                    z10 = false;
                    break;
                }
                i10++;
            }
            if (!z10) {
                throw new IllegalArgumentException(("Illegal service provider class name: " + string).toString());
            }
            if (string.length() > 0) {
                linkedHashSet.add(string);
            }
        }
    }

    public final List<u> c() {
        u uVar;
        if (!l.a()) {
            return b(u.class, u.class.getClassLoader());
        }
        try {
            ArrayList arrayList = new ArrayList(2);
            u uVar2 = null;
            try {
                uVar = (u) u.class.cast(Class.forName("ea.a", true, u.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused) {
                uVar = null;
            }
            if (uVar != null) {
                arrayList.add(uVar);
            }
            try {
                uVar2 = (u) u.class.cast(Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, u.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused2) {
            }
            if (uVar2 == null) {
                return arrayList;
            }
            arrayList.add(uVar2);
            return arrayList;
        } catch (Throwable unused3) {
            return b(u.class, u.class.getClassLoader());
        }
    }

    public final <S> List<S> d(Class<S> cls, ClassLoader classLoader) {
        ArrayList list = Collections.list(classLoader.getResources("META-INF/services/" + cls.getName()));
        t9.m.d(list, "list(this)");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            i9.q.o(arrayList, f31753a.e((URL) it.next()));
        }
        Set setS = i9.t.S(arrayList);
        if (!(!setS.isEmpty())) {
            throw new IllegalArgumentException("No providers were loaded with FastServiceLoader".toString());
        }
        ArrayList arrayList2 = new ArrayList(i9.m.l(setS, 10));
        Iterator it2 = setS.iterator();
        while (it2.hasNext()) {
            arrayList2.add(f31753a.a((String) it2.next(), classLoader, cls));
        }
        return arrayList2;
    }
}
