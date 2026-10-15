###### Class com.google.android.gms.internal.ads.zzgla (com.google.android.gms.internal.ads.zzgla)
.class public final Lcom/google/android/gms/internal/ads/zzgla;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzgqp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgkz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgla;->a:Lcom/google/android/gms/internal/ads/zzgqp;

    return-void
.end method

.method public static a(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    add-int/lit8 p0, p0, -0x2

    return p0

    .line 1
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
