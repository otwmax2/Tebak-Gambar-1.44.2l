###### Class com.google.android.gms.internal.ads.zzflh (com.google.android.gms.internal.ads.zzflh)
.class final Lcom/google/android/gms/internal/ads/zzflh;
.super Lcom/google/android/gms/internal/ads/zzfma;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:B


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfma;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflh;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/zzfma;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzflh;->a:I

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzflh;->c:B

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzfmb;
    .registers 5

    .line 1
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/zzflh;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzflj;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzflh;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflh;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzflj;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfli;)V

    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: statusCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
