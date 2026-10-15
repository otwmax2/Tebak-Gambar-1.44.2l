package y8;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: EmailValidator.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Pattern f37045a = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Matcher f37046b;

    public boolean a(String str) {
        if (str == null) {
            return false;
        }
        Matcher matcher = this.f37045a.matcher(str);
        this.f37046b = matcher;
        return matcher.matches();
    }
}
