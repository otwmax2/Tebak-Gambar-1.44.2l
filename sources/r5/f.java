package r5;

import com.vungle.mediation.VungleExtrasBuilder;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: MetaDataStore.java */
/* JADX INFO: loaded from: classes2.dex */
class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Charset f34263b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v5.f f34264a;

    /* JADX INFO: compiled from: MetaDataStore.java */
    class a extends JSONObject {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f34265a;

        a(String str) throws JSONException {
            this.f34265a = str;
            put(VungleExtrasBuilder.EXTRA_USER_ID, str);
        }
    }

    public f(v5.f fVar) {
        this.f34264a = fVar;
    }

    private static Map<String, String> e(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, o(jSONObject, next));
        }
        return map;
    }

    private static List<i> f(String str) throws JSONException {
        JSONArray jSONArray = new JSONObject(str).getJSONArray("rolloutsState");
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            String string = jSONArray.getString(i10);
            try {
                arrayList.add(i.a(string));
            } catch (Exception e10) {
                n5.g.f().l("Failed de-serializing rollouts state. " + string, e10);
            }
        }
        return arrayList;
    }

    private String g(String str) throws JSONException {
        return o(new JSONObject(str), VungleExtrasBuilder.EXTRA_USER_ID);
    }

    private static String h(Map<String, String> map) {
        return new JSONObject(map).toString();
    }

    private static String l(List<i> list) {
        HashMap map = new HashMap();
        JSONArray jSONArray = new JSONArray();
        for (int i10 = 0; i10 < list.size(); i10++) {
            try {
                jSONArray.put(new JSONObject(i.f34291a.b(list.get(i10))));
            } catch (JSONException e10) {
                n5.g.f().l("Exception parsing rollout assignment!", e10);
            }
        }
        map.put("rolloutsState", jSONArray);
        return new JSONObject(map).toString();
    }

    private static void m(File file) {
        if (file.exists() && file.delete()) {
            n5.g.f().g("Deleted corrupt file: " + file.getAbsolutePath());
        }
    }

    private static String n(String str) throws JSONException {
        return new a(str).toString();
    }

    private static String o(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }

    public File a(String str) {
        return this.f34264a.o(str, "internal-keys");
    }

    public File b(String str) {
        return this.f34264a.o(str, "keys");
    }

    public File c(String str) {
        return this.f34264a.o(str, "rollouts-state");
    }

    public File d(String str) {
        return this.f34264a.o(str, "user-data");
    }

    Map<String, String> i(String str, boolean z10) throws Throwable {
        FileInputStream fileInputStream;
        Exception e10;
        File fileA = z10 ? a(str) : b(str);
        if (!fileA.exists() || fileA.length() == 0) {
            m(fileA);
            return Collections.emptyMap();
        }
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(fileA);
            try {
                try {
                    Map<String, String> mapE = e(q5.i.A(fileInputStream));
                    q5.i.f(fileInputStream, "Failed to close user metadata file.");
                    return mapE;
                } catch (Exception e11) {
                    e10 = e11;
                    n5.g.f().l("Error deserializing user metadata.", e10);
                    m(fileA);
                    q5.i.f(fileInputStream, "Failed to close user metadata file.");
                    return Collections.emptyMap();
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                q5.i.f(fileInputStream2, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e12) {
            fileInputStream = null;
            e10 = e12;
        } catch (Throwable th2) {
            th = th2;
            q5.i.f(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public List<i> j(String str) throws Throwable {
        FileInputStream fileInputStream;
        File fileC = c(str);
        if (!fileC.exists() || fileC.length() == 0) {
            m(fileC);
            return Collections.emptyList();
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(fileC);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            List<i> listF = f(q5.i.A(fileInputStream));
            n5.g.f().b("Loaded rollouts state:\n" + listF + "\nfor session " + str);
            q5.i.f(fileInputStream, "Failed to close rollouts state file.");
            return listF;
        } catch (Exception e11) {
            e = e11;
            fileInputStream2 = fileInputStream;
            n5.g.f().l("Error deserializing rollouts state.", e);
            m(fileC);
            q5.i.f(fileInputStream2, "Failed to close rollouts state file.");
            return Collections.emptyList();
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            q5.i.f(fileInputStream2, "Failed to close rollouts state file.");
            throw th;
        }
    }

    public String k(String str) throws Throwable {
        FileInputStream fileInputStream;
        File fileD = d(str);
        FileInputStream fileInputStream2 = null;
        if (!fileD.exists() || fileD.length() == 0) {
            n5.g.f().b("No userId set for session " + str);
            m(fileD);
            return null;
        }
        try {
            fileInputStream = new FileInputStream(fileD);
            try {
                try {
                    String strG = g(q5.i.A(fileInputStream));
                    n5.g.f().b("Loaded userId " + strG + " for session " + str);
                    q5.i.f(fileInputStream, "Failed to close user metadata file.");
                    return strG;
                } catch (Exception e10) {
                    e = e10;
                    n5.g.f().l("Error deserializing user metadata.", e);
                    m(fileD);
                    q5.i.f(fileInputStream, "Failed to close user metadata file.");
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                q5.i.f(fileInputStream2, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            q5.i.f(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public void p(String str, Map<String, String> map) throws Throwable {
        q(str, map, false);
    }

    public void q(String str, Map<String, String> map, boolean z10) throws Throwable {
        String strH;
        BufferedWriter bufferedWriter;
        File fileA = z10 ? a(str) : b(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                strH = h(map);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileA), f34263b));
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            bufferedWriter.write(strH);
            bufferedWriter.flush();
            q5.i.f(bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Exception e11) {
            e = e11;
            bufferedWriter2 = bufferedWriter;
            n5.g.f().l("Error serializing key/value metadata.", e);
            m(fileA);
            q5.i.f(bufferedWriter2, "Failed to close key/value metadata file.");
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            q5.i.f(bufferedWriter2, "Failed to close key/value metadata file.");
            throw th;
        }
    }

    public void r(String str, List<i> list) throws Throwable {
        String strL;
        BufferedWriter bufferedWriter;
        File fileC = c(str);
        if (list.isEmpty()) {
            m(fileC);
            return;
        }
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                strL = l(list);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileC), f34263b));
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            bufferedWriter.write(strL);
            bufferedWriter.flush();
            q5.i.f(bufferedWriter, "Failed to close rollouts state file.");
        } catch (Exception e11) {
            e = e11;
            bufferedWriter2 = bufferedWriter;
            n5.g.f().l("Error serializing rollouts state.", e);
            m(fileC);
            q5.i.f(bufferedWriter2, "Failed to close rollouts state file.");
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            q5.i.f(bufferedWriter2, "Failed to close rollouts state file.");
            throw th;
        }
    }

    public void s(String str, String str2) throws Throwable {
        String strN;
        BufferedWriter bufferedWriter;
        File fileD = d(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                strN = n(str2);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileD), f34263b));
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bufferedWriter.write(strN);
            bufferedWriter.flush();
            q5.i.f(bufferedWriter, "Failed to close user metadata file.");
        } catch (Exception e11) {
            e = e11;
            bufferedWriter2 = bufferedWriter;
            n5.g.f().l("Error serializing user metadata.", e);
            q5.i.f(bufferedWriter2, "Failed to close user metadata file.");
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            q5.i.f(bufferedWriter2, "Failed to close user metadata file.");
            throw th;
        }
    }
}
