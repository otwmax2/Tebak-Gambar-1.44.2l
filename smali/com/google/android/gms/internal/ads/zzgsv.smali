###### Class com.google.android.gms.internal.ads.zzgsv (com.google.android.gms.internal.ads.zzgsv)
.class final Lcom/google/android/gms/internal/ads/zzgsv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Ljava/util/Iterator;

.field private static final b:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgst;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgst;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgsv;->a:Ljava/util/Iterator;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgsu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgsv;->b:Ljava/lang/Iterable;

    return-void
.end method

.method static a()Ljava/lang/Iterable;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsv;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method static bridge synthetic b()Ljava/util/Iterator;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsv;->a:Ljava/util/Iterator;

    return-object v0
.end method
