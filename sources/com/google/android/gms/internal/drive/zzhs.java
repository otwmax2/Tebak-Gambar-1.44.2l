package com.google.android.gms.internal.drive;

import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.MetadataField;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MetadataField<DriveId> f22029a = zzim.f22062e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MetadataField<String> f22030b = new com.google.android.gms.drive.metadata.internal.zzt("alternateLink", 4300000);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzhv f22031c = new zzhv(5000000);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final MetadataField<String> f22032d = new com.google.android.gms.drive.metadata.internal.zzt("description", 4300000);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final MetadataField<String> f22033e = new com.google.android.gms.drive.metadata.internal.zzt("embedLink", 4300000);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final MetadataField<String> f22034f = new com.google.android.gms.drive.metadata.internal.zzt("fileExtension", 4300000);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final MetadataField<Long> f22035g = new com.google.android.gms.drive.metadata.internal.zzi("fileSize", 4300000);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final MetadataField<String> f22036h = new com.google.android.gms.drive.metadata.internal.zzt("folderColorRgb", 7500000);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final MetadataField<Boolean> f22037i = new com.google.android.gms.drive.metadata.internal.zzb("hasThumbnail", 4300000);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final MetadataField<String> f22038j = new com.google.android.gms.drive.metadata.internal.zzt("indexableText", 4300000);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final MetadataField<Boolean> f22039k = new com.google.android.gms.drive.metadata.internal.zzb("isAppData", 4300000);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final MetadataField<Boolean> f22040l = new com.google.android.gms.drive.metadata.internal.zzb("isCopyable", 4300000);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final MetadataField<Boolean> f22041m = new com.google.android.gms.drive.metadata.internal.zzb("isEditable", 4100000);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final MetadataField<Boolean> f22042n = new zzht("isExplicitlyTrashed", Collections.singleton("trashed"), Collections.emptySet(), 7000000);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final MetadataField<Boolean> f22043o = new com.google.android.gms.drive.metadata.internal.zzb("isLocalContentUpToDate", 7800000);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzhw f22044p = new zzhw("isPinned", 4100000);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final MetadataField<Boolean> f22045q = new com.google.android.gms.drive.metadata.internal.zzb("isOpenable", 7200000);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final MetadataField<Boolean> f22046r = new com.google.android.gms.drive.metadata.internal.zzb("isRestricted", 4300000);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final MetadataField<Boolean> f22047s = new com.google.android.gms.drive.metadata.internal.zzb("isShared", 4300000);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final MetadataField<Boolean> f22048t = new com.google.android.gms.drive.metadata.internal.zzb("isGooglePhotosFolder", 7000000);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final MetadataField<Boolean> f22049u = new com.google.android.gms.drive.metadata.internal.zzb("isGooglePhotosRootFolder", 7000000);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final MetadataField<Boolean> f22050v = new com.google.android.gms.drive.metadata.internal.zzb("isTrashable", 4400000);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final MetadataField<Boolean> f22051w = new com.google.android.gms.drive.metadata.internal.zzb("isViewed", 4300000);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zzhx f22052x = new zzhx(4100000);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final MetadataField<String> f22053y = new com.google.android.gms.drive.metadata.internal.zzt("originalFilename", 4300000);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final com.google.android.gms.drive.metadata.zzb<String> f22054z = new com.google.android.gms.drive.metadata.internal.zzs("ownerNames", 4300000);
    public static final com.google.android.gms.drive.metadata.internal.zzu A = new com.google.android.gms.drive.metadata.internal.zzu("lastModifyingUser", 6000000);
    public static final com.google.android.gms.drive.metadata.internal.zzu B = new com.google.android.gms.drive.metadata.internal.zzu("sharingUser", 6000000);
    public static final com.google.android.gms.drive.metadata.internal.zzo C = new com.google.android.gms.drive.metadata.internal.zzo(4100000);
    public static final zzhy D = new zzhy("quotaBytesUsed", 4300000);
    public static final zzia E = new zzia("starred", 4100000);
    public static final MetadataField<BitmapTeleporter> F = new zzhu("thumbnail", Collections.emptySet(), Collections.emptySet(), 4400000);
    public static final zzib G = new zzib("title", 4100000);
    public static final zzic H = new zzic("trashed", 4100000);
    public static final MetadataField<String> I = new com.google.android.gms.drive.metadata.internal.zzt("webContentLink", 4300000);
    public static final MetadataField<String> J = new com.google.android.gms.drive.metadata.internal.zzt("webViewLink", 4300000);
    public static final MetadataField<String> K = new com.google.android.gms.drive.metadata.internal.zzt("uniqueIdentifier", 5000000);
    public static final com.google.android.gms.drive.metadata.internal.zzb L = new com.google.android.gms.drive.metadata.internal.zzb("writersCanShare", 6000000);
    public static final MetadataField<String> M = new com.google.android.gms.drive.metadata.internal.zzt("role", 6000000);
    public static final MetadataField<String> N = new com.google.android.gms.drive.metadata.internal.zzt("md5Checksum", 7000000);
    public static final zzhz O = new zzhz(7000000);
    public static final MetadataField<String> P = new com.google.android.gms.drive.metadata.internal.zzt("recencyReason", 8000000);
    public static final MetadataField<Boolean> Q = new com.google.android.gms.drive.metadata.internal.zzb("subscribed", 8000000);
}
