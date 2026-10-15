###### Class com.google.android.gms.internal.ads.zzfqg (com.google.android.gms.internal.ads.zzfqg)
.class final Lcom/google/android/gms/internal/ads/zzfqg;
.super Lcom/google/android/gms/internal/ads/zzfpg;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final o:Ljava/lang/Object;

.field final p:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqg;->o:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqg;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqg;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqg;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
