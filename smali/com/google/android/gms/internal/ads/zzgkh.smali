###### Class com.google.android.gms.internal.ads.zzgkh (com.google.android.gms.internal.ads.zzgkh)
.class public final Lcom/google/android/gms/internal/ads/zzgkh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzgqp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgkg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkh;->a:Lcom/google/android/gms/internal/ads/zzgqp;

    return-void
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_18

    const/4 v0, 0x5

    if-eq p0, v0, :cond_15

    const/4 v0, 0x6

    if-eq p0, v0, :cond_12

    const-string p0, "UNRECOGNIZED"

    return-object p0

    :cond_12
    const-string p0, "DHKEM_P521_HKDF_SHA512"

    return-object p0

    :cond_15
    const-string p0, "DHKEM_P384_HKDF_SHA384"

    return-object p0

    :cond_18
    const-string p0, "DHKEM_P256_HKDF_SHA256"

    return-object p0

    :cond_1b
    const-string p0, "DHKEM_X25519_HKDF_SHA256"

    return-object p0

    :cond_1e
    const-string p0, "KEM_UNKNOWN"

    return-object p0
.end method
