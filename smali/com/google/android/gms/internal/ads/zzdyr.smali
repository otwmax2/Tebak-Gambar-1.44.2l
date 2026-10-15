###### Class com.google.android.gms.internal.ads.zzdyr (com.google.android.gms.internal.ads.zzdyr)
.class final Lcom/google/android/gms/internal/ads/zzdyr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/zzfcu;

.field private final c:Lcom/google/android/gms/internal/ads/zzfcu;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfcu;Lcom/google/android/gms/internal/ads/zzfcu;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ttc"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyr;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyr;->b:Lcom/google/android/gms/internal/ads/zzfcu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyr;->c:Lcom/google/android/gms/internal/ads/zzfcu;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzdyr;)Lcom/google/android/gms/internal/ads/zzfcu;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyr;->c:Lcom/google/android/gms/internal/ads/zzfcu;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzdyr;)Lcom/google/android/gms/internal/ads/zzfcu;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyr;->b:Lcom/google/android/gms/internal/ads/zzfcu;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzdyr;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyr;->a:Ljava/lang/String;

    return-object p0
.end method
