###### Class com.google.android.gms.internal.ads.zzdoi (com.google.android.gms.internal.ads.zzdoi)
.class final Lcom/google/android/gms/internal/ads/zzdoi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzdoj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdoj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoi;->a:Lcom/google/android/gms/internal/ads/zzdoj;

    return-void
.end method

.method static bridge synthetic a()Lcom/google/android/gms/internal/ads/zzdoj;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdoi;->a:Lcom/google/android/gms/internal/ads/zzdoj;

    return-object v0
.end method
