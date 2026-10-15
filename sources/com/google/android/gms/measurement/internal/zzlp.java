package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
public final class zzlp extends z0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f24872g = {"firebase_", "google_", "ga_"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String[] f24873h = {"_err"};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f24874i = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SecureRandom f24875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicLong f24876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f24877e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Integer f24878f;

    zzlp(zzgi zzgiVar) {
        super(zzgiVar);
        this.f24878f = null;
        this.f24876d = new AtomicLong(0L);
    }

    static boolean V(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    static boolean W(String str) {
        Preconditions.g(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    static boolean X(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.k(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    static boolean Y(Context context, boolean z10) {
        Preconditions.k(context);
        return Build.VERSION.SDK_INT >= 24 ? i0(context, "com.google.android.gms.measurement.AppMeasurementJobService") : i0(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    static boolean Z(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    public static boolean a0(String str) {
        return !f24873h[0].equals(str);
    }

    static final boolean d0(Bundle bundle, int i10) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i10);
        return true;
    }

    @VisibleForTesting
    static final boolean e0(String str) {
        Preconditions.k(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    private final int f0(String str) {
        if ("_ldl".equals(str)) {
            this.f24394a.v();
            return 2048;
        }
        if ("_id".equals(str)) {
            this.f24394a.v();
            return 256;
        }
        if ("_lgclid".equals(str)) {
            this.f24394a.v();
            return 100;
        }
        this.f24394a.v();
        return 36;
    }

    private final Object g0(int i10, Object obj, boolean z10, boolean z11) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return m(obj.toString(), i10, z10);
        }
        if (!z11 || (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[]))) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle bundleU0 = u0((Bundle) parcelable);
                if (!bundleU0.isEmpty()) {
                    arrayList.add(bundleU0);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    private static boolean h0(String str, String[] strArr) {
        Preconditions.k(strArr);
        for (String str2 : strArr) {
            if (Z(str, str2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean i0(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    static MessageDigest o() {
        MessageDigest messageDigest;
        for (int i10 = 0; i10 < 2; i10++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    public static ArrayList q(List list) {
        if (list == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzab zzabVar = (zzab) it.next();
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzabVar.f24415o);
            bundle.putString("origin", zzabVar.f24416p);
            bundle.putLong("creation_timestamp", zzabVar.f24418r);
            bundle.putString("name", zzabVar.f24417q.f24866p);
            zzhe.b(bundle, Preconditions.k(zzabVar.f24417q.V3()));
            bundle.putBoolean("active", zzabVar.f24419s);
            String str = zzabVar.f24420t;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzav zzavVar = zzabVar.f24421u;
            if (zzavVar != null) {
                bundle.putString("timed_out_event_name", zzavVar.f24454o);
                zzat zzatVar = zzavVar.f24455p;
                if (zzatVar != null) {
                    bundle.putBundle("timed_out_event_params", zzatVar.X3());
                }
            }
            bundle.putLong("trigger_timeout", zzabVar.f24422v);
            zzav zzavVar2 = zzabVar.f24423w;
            if (zzavVar2 != null) {
                bundle.putString("triggered_event_name", zzavVar2.f24454o);
                zzat zzatVar2 = zzavVar2.f24455p;
                if (zzatVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzatVar2.X3());
                }
            }
            bundle.putLong("triggered_timestamp", zzabVar.f24417q.f24867q);
            bundle.putLong("time_to_live", zzabVar.f24424x);
            zzav zzavVar3 = zzabVar.f24425y;
            if (zzavVar3 != null) {
                bundle.putString("expired_event_name", zzavVar3.f24454o);
                zzat zzatVar3 = zzavVar3.f24455p;
                if (zzatVar3 != null) {
                    bundle.putBundle("expired_event_params", zzatVar3.X3());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    @VisibleForTesting
    static long q0(byte[] bArr) {
        Preconditions.k(bArr);
        int length = bArr.length;
        int i10 = 0;
        Preconditions.n(length > 0);
        long j10 = 0;
        for (int i11 = length - 1; i11 >= 0 && i11 >= bArr.length - 8; i11--) {
            j10 += (((long) bArr[i11]) & 255) << i10;
            i10 += 8;
        }
        return j10;
    }

    public static void u(zziu zziuVar, Bundle bundle, boolean z10) {
        if (bundle != null && zziuVar != null) {
            if (!bundle.containsKey("_sc") || z10) {
                String str = zziuVar.f24785a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = zziuVar.f24786b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", zziuVar.f24787c);
                return;
            }
            z10 = false;
        }
        if (bundle != null && zziuVar == null && z10) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    public final void A(com.google.android.gms.internal.measurement.zzcf zzcfVar, boolean z10) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z10);
        try {
            zzcfVar.X(bundle);
        } catch (RemoteException e10) {
            this.f24394a.U().r().b("Error returning boolean value to wrapper", e10);
        }
    }

    public final void C(com.google.android.gms.internal.measurement.zzcf zzcfVar, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            zzcfVar.X(bundle);
        } catch (RemoteException e10) {
            this.f24394a.U().r().b("Error returning bundle list to wrapper", e10);
        }
    }

    public final void D(com.google.android.gms.internal.measurement.zzcf zzcfVar, Bundle bundle) {
        try {
            zzcfVar.X(bundle);
        } catch (RemoteException e10) {
            this.f24394a.U().r().b("Error returning bundle value to wrapper", e10);
        }
    }

    public final void E(com.google.android.gms.internal.measurement.zzcf zzcfVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            zzcfVar.X(bundle);
        } catch (RemoteException e10) {
            this.f24394a.U().r().b("Error returning byte array to wrapper", e10);
        }
    }

    public final void F(com.google.android.gms.internal.measurement.zzcf zzcfVar, int i10) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i10);
        try {
            zzcfVar.X(bundle);
        } catch (RemoteException e10) {
            this.f24394a.U().r().b("Error returning int value to wrapper", e10);
        }
    }

    public final void G(com.google.android.gms.internal.measurement.zzcf zzcfVar, long j10) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j10);
        try {
            zzcfVar.X(bundle);
        } catch (RemoteException e10) {
            this.f24394a.U().r().b("Error returning long value to wrapper", e10);
        }
    }

    public final void H(com.google.android.gms.internal.measurement.zzcf zzcfVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            zzcfVar.X(bundle);
        } catch (RemoteException e10) {
            this.f24394a.U().r().b("Error returning string value to wrapper", e10);
        }
    }

    final void I(String str, String str2, String str3, Bundle bundle, List list, boolean z10) {
        int i10;
        String str4;
        int iM;
        if (bundle == null) {
            return;
        }
        this.f24394a.v();
        int i11 = 0;
        for (String str5 : new TreeSet(bundle.keySet())) {
            if (list == null || !list.contains(str5)) {
                int iM0 = !z10 ? m0(str5) : 0;
                if (iM0 == 0) {
                    iM0 = l0(str5);
                }
                i10 = iM0;
            } else {
                i10 = 0;
            }
            if (i10 != 0) {
                s(bundle, i10, str5, str5, i10 == 3 ? str5 : null);
                bundle.remove(str5);
            } else {
                if (S(bundle.get(str5))) {
                    this.f24394a.U().s().d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str5);
                    str4 = str5;
                    iM = 22;
                } else {
                    str4 = str5;
                    iM = M(str, str2, str5, bundle.get(str5), bundle, list, z10, false);
                }
                if (iM != 0 && !"_ev".equals(str4)) {
                    s(bundle, iM, str4, str4, bundle.get(str4));
                    bundle.remove(str4);
                } else if (W(str4) && !h0(str4, zzhg.f24745d) && (i11 = i11 + 1) > 0) {
                    this.f24394a.U().n().c("Item cannot contain custom parameters", this.f24394a.A().d(str2), this.f24394a.A().b(bundle));
                    d0(bundle, 23);
                    bundle.remove(str4);
                }
            }
        }
    }

    final boolean J(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (e0(str)) {
                return true;
            }
            if (this.f24394a.l()) {
                this.f24394a.U().n().b("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", zzey.v(str));
            }
            return false;
        }
        if (TextUtils.isEmpty(str2)) {
            if (this.f24394a.l()) {
                this.f24394a.U().n().a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            }
            return false;
        }
        if (e0(str2)) {
            return true;
        }
        this.f24394a.U().n().b("Invalid admob_app_id. Analytics disabled.", zzey.v(str2));
        return false;
    }

    final boolean K(String str, int i10, String str2) {
        if (str2 == null) {
            this.f24394a.U().n().b("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i10) {
            return true;
        }
        this.f24394a.U().n().d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i10), str2);
        return false;
    }

    final boolean L(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.f24394a.U().n().b("Name is required and can't be null. Type", str);
            return false;
        }
        Preconditions.k(str2);
        String[] strArr3 = f24872g;
        for (int i10 = 0; i10 < 3; i10++) {
            if (str2.startsWith(strArr3[i10])) {
                this.f24394a.U().n().c("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !h0(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && h0(str2, strArr2)) {
            return true;
        }
        this.f24394a.U().n().c("Name is reserved. Type, name", str, str2);
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final int M(java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.Object r18, android.os.Bundle r19, java.util.List r20, boolean r21, boolean r22) {
        /*
            Method dump skipped, instruction units count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlp.M(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    final boolean N(String str, String str2, int i10, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String string = obj.toString();
            if (string.codePointCount(0, string.length()) > i10) {
                this.f24394a.U().s().d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(string.length()));
                return false;
            }
        }
        return true;
    }

    final boolean O(String str, String str2) {
        if (str2 == null) {
            this.f24394a.U().n().b("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            this.f24394a.U().n().b("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            if (iCodePointAt != 95) {
                this.f24394a.U().n().c("Name must start with a letter or _ (underscore). Type, name", str, str2);
                return false;
            }
            iCodePointAt = 95;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                this.f24394a.U().n().c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    final boolean P(String str, String str2) {
        if (str2 == null) {
            this.f24394a.U().n().b("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            this.f24394a.U().n().b("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            this.f24394a.U().n().c("Name must start with a letter. Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                this.f24394a.U().n().c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    final boolean Q(String str) {
        c();
        if (Wrappers.a(this.f24394a.N0()).a(str) == 0) {
            return true;
        }
        this.f24394a.U().l().b("Permission not granted", str);
        return false;
    }

    final boolean R(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strP = this.f24394a.v().p();
        this.f24394a.t();
        return strP.equals(str);
    }

    final boolean S(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    @VisibleForTesting
    final boolean T(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfoF = Wrappers.a(context).f(str, 64);
            if (packageInfoF == null || (signatureArr = packageInfoF.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e10) {
            this.f24394a.U().m().b("Package name not found", e10);
            return true;
        } catch (CertificateException e11) {
            this.f24394a.U().m().b("Error obtaining certificate", e11);
            return true;
        }
    }

    final boolean b0(String str, String str2, String str3, String str4) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        boolean zIsEmpty2 = TextUtils.isEmpty(str2);
        if (!zIsEmpty && !zIsEmpty2) {
            Preconditions.k(str);
            return !str.equals(str2);
        }
        if (zIsEmpty && zIsEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        }
        if (zIsEmpty) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    final byte[] c0(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // com.google.android.gms.measurement.internal.z0
    protected final void d() {
        c();
        SecureRandom secureRandom = new SecureRandom();
        long jNextLong = secureRandom.nextLong();
        if (jNextLong == 0) {
            jNextLong = secureRandom.nextLong();
            if (jNextLong == 0) {
                this.f24394a.U().r().a("Utils falling back to Random for random id");
            }
        }
        this.f24876d.set(jNextLong);
    }

    @Override // com.google.android.gms.measurement.internal.z0
    protected final boolean e() {
        return true;
    }

    final Object j(String str, Object obj) {
        int i10 = 256;
        if ("_ev".equals(str)) {
            this.f24394a.v();
            return g0(256, obj, true, true);
        }
        if (V(str)) {
            this.f24394a.v();
        } else {
            this.f24394a.v();
            i10 = 100;
        }
        return g0(i10, obj, false, true);
    }

    final int j0(String str, Object obj) {
        return "_ldl".equals(str) ? N("user property referrer", str, f0(str), obj) : N("user property", str, f0(str), obj) ? 0 : 7;
    }

    final Object k(String str, Object obj) {
        return "_ldl".equals(str) ? g0(f0(str), obj, true, false) : g0(f0(str), obj, false, false);
    }

    final int k0(String str) {
        if (!O("event", str)) {
            return 2;
        }
        if (!L("event", zzhf.f24738a, zzhf.f24739b, str)) {
            return 13;
        }
        this.f24394a.v();
        return !K("event", 40, str) ? 2 : 0;
    }

    final String l() {
        byte[] bArr = new byte[16];
        p().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    final int l0(String str) {
        if (!O("event param", str)) {
            return 3;
        }
        if (!L("event param", null, null, str)) {
            return 14;
        }
        this.f24394a.v();
        return !K("event param", 40, str) ? 3 : 0;
    }

    public final String m(String str, int i10, boolean z10) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i10) {
            return str;
        }
        if (z10) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i10))).concat("...");
        }
        return null;
    }

    final int m0(String str) {
        if (!P("event param", str)) {
            return 3;
        }
        if (!L("event param", null, null, str)) {
            return 14;
        }
        this.f24394a.v();
        return !K("event param", 40, str) ? 3 : 0;
    }

    public final URL n(long j10, String str, String str2, long j11) {
        try {
            Preconditions.g(str2);
            Preconditions.g(str);
            String strConcat = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 61000L, Integer.valueOf(o0())), str2, str, Long.valueOf(j11));
            if (str.equals(this.f24394a.v().q())) {
                strConcat = strConcat.concat("&ddl_test=1");
            }
            return new URL(strConcat);
        } catch (IllegalArgumentException | MalformedURLException e10) {
            this.f24394a.U().m().b("Failed to create BOW URL for Deferred Deep Link. exception", e10.getMessage());
            return null;
        }
    }

    final int n0(String str) {
        if (!O("user property", str)) {
            return 6;
        }
        if (!L("user property", zzhh.f24746a, null, str)) {
            return 15;
        }
        this.f24394a.v();
        return !K("user property", 24, str) ? 6 : 0;
    }

    @EnsuresNonNull({"this.apkVersion"})
    public final int o0() {
        if (this.f24878f == null) {
            this.f24878f = Integer.valueOf(GoogleApiAvailabilityLight.h().b(this.f24394a.N0()) / 1000);
        }
        return this.f24878f.intValue();
    }

    @EnsuresNonNull({"this.secureRandom"})
    final SecureRandom p() {
        c();
        if (this.f24875c == null) {
            this.f24875c = new SecureRandom();
        }
        return this.f24875c;
    }

    public final int p0(int i10) {
        return GoogleApiAvailabilityLight.h().j(this.f24394a.N0(), 12451000);
    }

    final void r(Bundle bundle, long j10) {
        long j11 = bundle.getLong("_et");
        if (j11 != 0) {
            this.f24394a.U().r().b("Params already contained engagement", Long.valueOf(j11));
        } else {
            j11 = 0;
        }
        bundle.putLong("_et", j10 + j11);
    }

    public final long r0() {
        long andIncrement;
        long j10;
        if (this.f24876d.get() != 0) {
            synchronized (this.f24876d) {
                this.f24876d.compareAndSet(-1L, 1L);
                andIncrement = this.f24876d.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (this.f24876d) {
            long jNextLong = new Random(System.nanoTime() ^ this.f24394a.x().a()).nextLong();
            int i10 = this.f24877e + 1;
            this.f24877e = i10;
            j10 = jNextLong + ((long) i10);
        }
        return j10;
    }

    final void s(Bundle bundle, int i10, String str, String str2, Object obj) {
        if (d0(bundle, i10)) {
            this.f24394a.v();
            bundle.putString("_ev", m(str, 40, true));
            if (obj != null) {
                Preconditions.k(bundle);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    public final long s0(long j10, long j11) {
        return (j10 + (j11 * 60000)) / 86400000;
    }

    final Bundle t0(Uri uri, boolean z10, boolean z11) {
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        String queryParameter4;
        String queryParameter5;
        String queryParameter6;
        String queryParameter7;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    queryParameter = uri.getQueryParameter("utm_campaign");
                    queryParameter2 = uri.getQueryParameter("utm_source");
                    queryParameter3 = uri.getQueryParameter("utm_medium");
                    queryParameter4 = uri.getQueryParameter("gclid");
                    if (z10) {
                        queryParameter5 = uri.getQueryParameter("utm_id");
                        queryParameter6 = uri.getQueryParameter("dclid");
                    } else {
                        queryParameter5 = null;
                        queryParameter6 = null;
                    }
                    queryParameter7 = z11 ? uri.getQueryParameter("srsltid") : null;
                } else {
                    queryParameter = null;
                    queryParameter2 = null;
                    queryParameter3 = null;
                    queryParameter4 = null;
                    queryParameter5 = null;
                    queryParameter6 = null;
                    queryParameter7 = null;
                }
                if (TextUtils.isEmpty(queryParameter) && TextUtils.isEmpty(queryParameter2) && TextUtils.isEmpty(queryParameter3) && TextUtils.isEmpty(queryParameter4) && ((!z10 || (TextUtils.isEmpty(queryParameter5) && TextUtils.isEmpty(queryParameter6))) && (!z11 || TextUtils.isEmpty(queryParameter7)))) {
                    return null;
                }
                Bundle bundle = new Bundle();
                if (!TextUtils.isEmpty(queryParameter)) {
                    bundle.putString("campaign", queryParameter);
                }
                if (!TextUtils.isEmpty(queryParameter2)) {
                    bundle.putString(ShareConstants.FEED_SOURCE_PARAM, queryParameter2);
                }
                if (!TextUtils.isEmpty(queryParameter3)) {
                    bundle.putString("medium", queryParameter3);
                }
                if (!TextUtils.isEmpty(queryParameter4)) {
                    bundle.putString("gclid", queryParameter4);
                }
                String queryParameter8 = uri.getQueryParameter("utm_term");
                if (!TextUtils.isEmpty(queryParameter8)) {
                    bundle.putString("term", queryParameter8);
                }
                String queryParameter9 = uri.getQueryParameter("utm_content");
                if (!TextUtils.isEmpty(queryParameter9)) {
                    bundle.putString("content", queryParameter9);
                }
                String queryParameter10 = uri.getQueryParameter("aclid");
                if (!TextUtils.isEmpty(queryParameter10)) {
                    bundle.putString("aclid", queryParameter10);
                }
                String queryParameter11 = uri.getQueryParameter("cp1");
                if (!TextUtils.isEmpty(queryParameter11)) {
                    bundle.putString("cp1", queryParameter11);
                }
                String queryParameter12 = uri.getQueryParameter("anid");
                if (!TextUtils.isEmpty(queryParameter12)) {
                    bundle.putString("anid", queryParameter12);
                }
                if (z10) {
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        bundle.putString("campaign_id", queryParameter5);
                    }
                    if (!TextUtils.isEmpty(queryParameter6)) {
                        bundle.putString("dclid", queryParameter6);
                    }
                    String queryParameter13 = uri.getQueryParameter("utm_source_platform");
                    if (!TextUtils.isEmpty(queryParameter13)) {
                        bundle.putString("source_platform", queryParameter13);
                    }
                    String queryParameter14 = uri.getQueryParameter("utm_creative_format");
                    if (!TextUtils.isEmpty(queryParameter14)) {
                        bundle.putString("creative_format", queryParameter14);
                    }
                    String queryParameter15 = uri.getQueryParameter("utm_marketing_tactic");
                    if (!TextUtils.isEmpty(queryParameter15)) {
                        bundle.putString("marketing_tactic", queryParameter15);
                    }
                }
                if (z11 && !TextUtils.isEmpty(queryParameter7)) {
                    bundle.putString("srsltid", queryParameter7);
                }
                return bundle;
            } catch (UnsupportedOperationException e10) {
                this.f24394a.U().r().b("Install referrer url isn't a hierarchical URI", e10);
            }
        }
        return null;
    }

    final Bundle u0(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object objJ = j(str, bundle.get(str));
                if (objJ == null) {
                    this.f24394a.U().s().b("Param value can't be null", this.f24394a.A().e(str));
                } else {
                    z(bundle2, str, objJ);
                }
            }
        }
        return bundle2;
    }

    final void v(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                this.f24394a.L().z(bundle, str, bundle2.get(str));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0106 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final android.os.Bundle v0(java.lang.String r21, java.lang.String r22, android.os.Bundle r23, java.util.List r24, boolean r25) {
        /*
            Method dump skipped, instruction units count: 269
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlp.v0(java.lang.String, java.lang.String, android.os.Bundle, java.util.List, boolean):android.os.Bundle");
    }

    final void w(zzez zzezVar, int i10) {
        int i11 = 0;
        for (String str : new TreeSet(zzezVar.f24649d.keySet())) {
            if (W(str) && (i11 = i11 + 1) > i10) {
                this.f24394a.U().n().c("Event can't contain more than " + i10 + " params", this.f24394a.A().d(zzezVar.f24646a), this.f24394a.A().b(zzezVar.f24649d));
                d0(zzezVar.f24649d, 5);
                zzezVar.f24649d.remove(str);
            }
        }
    }

    final zzav w0(String str, String str2, Bundle bundle, String str3, long j10, boolean z10, boolean z11) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (k0(str2) != 0) {
            this.f24394a.U().m().b("Invalid conditional property event name", this.f24394a.A().f(str2));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str3);
        Bundle bundleV0 = v0(str, str2, bundle2, CollectionUtils.b("_o"), true);
        if (z10) {
            bundleV0 = u0(bundleV0);
        }
        Preconditions.k(bundleV0);
        return new zzav(str2, new zzat(bundleV0), str3, j10);
    }

    final void y(c4 c4Var, String str, int i10, String str2, String str3, int i11) {
        Bundle bundle = new Bundle();
        d0(bundle, i10);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i10 == 6 || i10 == 7 || i10 == 2) {
            bundle.putLong("_el", i11);
        }
        c4Var.a(str, "_err", bundle);
    }

    final void z(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str != null) {
            this.f24394a.U().s().c("Not putting event parameter. Invalid value type. name, type", this.f24394a.A().e(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }
}
