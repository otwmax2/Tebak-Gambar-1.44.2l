package e8;

import android.text.TextUtils;
import e8.b;
import java.util.HashSet;
import org.json.JSONObject;
import x7.k;

/* JADX INFO: loaded from: classes2.dex */
public class f extends a {
    public f(b.InterfaceC0155b interfaceC0155b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0155b, hashSet, jSONObject, j10);
    }

    private void e(String str) {
        y7.a aVarA = y7.a.a();
        if (aVarA != null) {
            for (k kVar : aVarA.c()) {
                if (this.f28959c.contains(kVar.j())) {
                    kVar.k().d(str, this.f28961e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e8.b, android.os.AsyncTask
    /* JADX INFO: renamed from: b */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            e(str);
        }
        super.onPostExecute(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public String doInBackground(Object... objArr) {
        if (a8.b.l(this.f28960d, this.f28963b.a())) {
            return null;
        }
        this.f28963b.b(this.f28960d);
        return this.f28960d.toString();
    }
}
