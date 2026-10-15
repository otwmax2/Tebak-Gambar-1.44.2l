###### Class com.google.android.gms.internal.ads.zzcpk (com.google.android.gms.internal.ads.zzcpk)
.class final Lcom/google/android/gms/internal/ads/zzcpk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzcpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcpk;->a:Lcom/google/android/gms/internal/ads/zzcpl;

    return-void
.end method

.method static bridge synthetic a()Lcom/google/android/gms/internal/ads/zzcpl;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcpk;->a:Lcom/google/android/gms/internal/ads/zzcpl;

    return-object v0
.end method
