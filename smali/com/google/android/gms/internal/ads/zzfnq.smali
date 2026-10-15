###### Class com.google.android.gms.internal.ads.zzfnq (com.google.android.gms.internal.ads.zzfnq)
.class public abstract Lcom/google/android/gms/internal/ads/zzfnq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/ads/zzfnq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfmz;->o:Lcom/google/android/gms/internal/ads/zzfmz;

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfnq;
    .registers 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p0, :cond_5

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfmz;->o:Lcom/google/android/gms/internal/ads/zzfmz;

    goto :goto_b

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfnz;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_b
    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/ads/zzfnj;)Lcom/google/android/gms/internal/ads/zzfnq;
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/Object;
.end method
