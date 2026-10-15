###### Class com.google.android.gms.internal.ads.zzdtz (com.google.android.gms.internal.ads.zzdtz)
.class final Lcom/google/android/gms/internal/ads/zzdtz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzdua;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdua;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdua;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdtz;->a:Lcom/google/android/gms/internal/ads/zzdua;

    return-void
.end method

.method static bridge synthetic a()Lcom/google/android/gms/internal/ads/zzdua;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtz;->a:Lcom/google/android/gms/internal/ads/zzdua;

    return-object v0
.end method
