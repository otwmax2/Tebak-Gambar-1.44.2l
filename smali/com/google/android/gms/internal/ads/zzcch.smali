###### Class com.google.android.gms.internal.ads.zzcch (com.google.android.gms.internal.ads.zzcch)
.class final Lcom/google/android/gms/internal/ads/zzcch;
.super Lcom/google/android/gms/internal/ads/zzalx;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field static final c:Lcom/google/android/gms/internal/ads/zzcch;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcch;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcch;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcch;->c:Lcom/google/android/gms/internal/ads/zzcch;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzalx;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzamb;
    .registers 4

    const-string p2, "moov"

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzamd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamd;-><init>()V

    return-object p1

    :cond_e
    const-string p2, "mvhd"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzame;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzame;-><init>()V

    return-object p1

    .line 5
    :cond_1c
    new-instance p2, Lcom/google/android/gms/internal/ads/zzamf;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
