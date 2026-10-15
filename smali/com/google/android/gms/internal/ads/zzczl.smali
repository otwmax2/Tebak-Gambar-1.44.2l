###### Class com.google.android.gms.internal.ads.zzczl (com.google.android.gms.internal.ads.zzczl)
.class final Lcom/google/android/gms/internal/ads/zzczl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzczm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzczm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzczm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzczl;->a:Lcom/google/android/gms/internal/ads/zzczm;

    return-void
.end method

.method static bridge synthetic a()Lcom/google/android/gms/internal/ads/zzczm;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzczl;->a:Lcom/google/android/gms/internal/ads/zzczm;

    return-object v0
.end method
