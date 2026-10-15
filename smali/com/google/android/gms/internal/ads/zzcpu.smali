###### Class com.google.android.gms.internal.ads.zzcpu (com.google.android.gms.internal.ads.zzcpu)
.class public final Lcom/google/android/gms/internal/ads/zzcpu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbfo;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfo;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->a:Lcom/google/android/gms/internal/ads/zzbfo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpu;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzbfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpu;->a:Lcom/google/android/gms/internal/ads/zzbfo;

    return-object v0
.end method

.method public final b()Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpu;->b:Ljava/lang/Runnable;

    return-object v0
.end method
