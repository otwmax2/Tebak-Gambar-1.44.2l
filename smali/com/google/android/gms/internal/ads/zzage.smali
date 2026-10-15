###### Class com.google.android.gms.internal.ads.zzage (com.google.android.gms.internal.ads.zzage)
.class final Lcom/google/android/gms/internal/ads/zzage;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final b:Lcom/google/android/gms/internal/ads/zzfoh;

.field private static final c:Lcom/google/android/gms/internal/ads/zzfoh;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfng;->c(C)Lcom/google/android/gms/internal/ads/zzfng;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfoh;->c(Lcom/google/android/gms/internal/ads/zzfng;)Lcom/google/android/gms/internal/ads/zzfoh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzage;->b:Lcom/google/android/gms/internal/ads/zzfoh;

    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfng;->c(C)Lcom/google/android/gms/internal/ads/zzfng;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfoh;->c(Lcom/google/android/gms/internal/ads/zzfng;)Lcom/google/android/gms/internal/ads/zzfoh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzage;->c:Lcom/google/android/gms/internal/ads/zzfoh;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzage;->a:Ljava/util/List;

    return-void
.end method
