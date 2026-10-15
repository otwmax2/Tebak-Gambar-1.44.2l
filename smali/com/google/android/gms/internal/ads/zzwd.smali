###### Class com.google.android.gms.internal.ads.zzwd (com.google.android.gms.internal.ads.zzwd)
.class public final Lcom/google/android/gms/internal/ads/zzwd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzcp;

.field public final b:[I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcp;[II)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p3, p2

    if-nez p3, :cond_12

    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-direct {p3}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v0, "ETSDefinition"

    const-string v1, "Empty tracks are not allowed"

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwd;->a:Lcom/google/android/gms/internal/ads/zzcp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwd;->b:[I

    return-void
.end method
